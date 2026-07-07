# ffigen symbol-file bindings — design (Tizen 6.0 first)

## Problem

`configs/<ver>/ffigen_*.yaml` — 751 files (6 versions × ~125 modules). ~90% of each file is
identical boilerplate. Worse: bindings are split per-module (PR #60) to get per-library lazy
loading + a `tizen.tizenStorage.x` namespaced API. Splitting causes **duplicate type
declarations** across the generated dart files (shared types like `bundle`, `media_format_h`,
`time_t`, EFL/glib). Currently patched by hand in **46 of 116** 6.0 configs via
`library-imports` + `type-map`, plus `hide` clauses in `tizen.dart`.

## Goal

Eliminate the cross-file duplicate declarations using ffigen 11's native **symbol-file import**,
while keeping the per-module class / lazy-loading architecture (no consumer API break).

## Mechanism (ffigen 11, verified against pub-cache example `shared_bindings/`)

Provider module (owns shared types) emits a symbol file:

```yaml
output:
  bindings: '../../lib/src/bindings/6.0/generated_bindings_capi_media_tool.dart'
  symbol-file:
    output: '.symbols/capi_media_tool.yaml'
    import-path: 'package:tizen_interop/src/bindings/6.0/generated_bindings_capi_media_tool.dart'
```

Consumer module imports it (replaces hand-written `library-imports` + `type-map`):

```yaml
import:
  symbol-files:
    - '.symbols/capi_media_tool.yaml'
```

ffigen then references the provider's declarations instead of re-emitting them.

## Dependency graph (6.0, extracted from the 46 existing `library-imports` edges)

Providers (14): `capi_media_tool`(→tbm), `tbm`, `bundle`, `capi_appfw_app_control`,
`capi_appfw_app_common`, `time`, `capi_media_sound_manager`, `notification`(→app_control),
`accounts_svc`, `mv_common`(→media_tool), `capi_media_camera`(→media_tool), `vc`,
`capi_ui_inputmethod`, `capi_ui_autofill_common`.

~38 consumer edges. DAG, no cycles. ffigen must run in **topological order** (providers first).

## Changes

1. **46 configs**: drop `library-imports`+`type-map`, add `import.symbol-files`. 14 providers get
   `output.symbol-file`.
2. **Dependency manifest**: single source for the edges (drives generator + topo order).
3. **`scripts/generate_bindings.sh`**: alphabetical → topological order.
4. **`lib/6.0/tizen.dart`**: regenerate (`generate_tizen.py`). Drop `hide UnnamedUnion1,
   UnnamedStruct1` if symbol-file import makes them unnecessary.
5. Symbol files written to `configs/6.0/.symbols/` (build intermediates, gitignored).

## Phases

- **0 (pilot)**: `tbm → capi_media_tool → capi_media_codec` only. Prove dedup + hide-drop on a
  3-level chain before touching all 116.
- **1**: all 14 providers + 46 consumers, topological regen (116 dart files).
- **2**: regenerate `tizen.dart`, `dart analyze lib/6.0/tizen.dart` clean with **zero** manual
  type-maps.
- **3**: build `example` tpk → install RPI4 → `flutter-tizen drive` integration_test → pass.
- **4**: build `tizen_interop_callbacks/example` tpk → install RPI4 → launch smoke (no
  integration_test exists there).

## Acceptance

- `dart analyze lib/6.0/tizen.dart` clean, 0 manual `type-map`/`library-imports` in 6.0 configs.
- example integration_test passes on RPI4.
- callbacks example launches on RPI4.
- Unrelated (independent) modules regenerate byte-identical (no spurious diffs).

## Risks

- Unnamed union/struct dedup may still need `hide`.
- Topo order correctness (verify no cycles in full graph).
- callbacks example has no automated test → smoke only.
- 290k-line regen — confirm no unintended diffs.

## Out of scope (later)

- Versions 6.5/7.0/8.0/9.0/10.0 (replicate after 6.0 proven).
- Folding the boilerplate into a manifest+template generator (separate follow-up).
