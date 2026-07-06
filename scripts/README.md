# tizen_interop tools

## Copying a rootstrap

1. Install a rootstrap of your target Tizen version (e.g. `IOT-Headed-6.0-NativeAppDevelopment-CLI`) using Tizen Package Manager.

2. Run scripts in this directory as follows, passing the version number as an argument.

   ```sh
   scripts/copy_rootstrap.sh <version>
   ```

## Generating bindings for a new Tizen version

1. Create a copy of any existing config in the `configs` directory with the new version number as the directory name.

2. Manually update `entrypoints.h` and `symgen.yaml` by referring to the official [API docs](https://docs.tizen.org/application/native/api/iot-headed/latest) and the rootstrap. (Run `symgen_helper.sh` to find out what to add to `symgen.yaml`. (`scripts/symgen_helper.sh <version>`))

3. Per-module ffigen configs are generated from the shared manifest
   `configs/modules.yaml` by `scripts/gen_ffigen_configs.py` (invoked
   automatically by `generate_bindings.sh`). The committed sources are the
   manifest plus each version's `symgen.yaml` and `entrypoints*.h`; the expanded
   `configs/<version>/ffigen_*.yaml` files are gitignored build artifacts.

   The manifest splits each ffigen config into shared parts (`preamble`,
   `llvm-path`, and the per-version `compiler-opts` block) and each module's
   unique part (`name`, `description`, `output`/`symbol-file`, `headers`,
   `import.symbol-files` for cross-module dedup, `type-map`, `macros`, `enums`).

   For a new version, bootstrap its entry by extracting from per-version configs:

   ```sh
   python3 scripts/extract_manifest.py <version>
   ```

   (Migrating an older version that still hand-writes module `type-map`/
   `library-imports` for dedup? Run `python3 scripts/migrate_symbol_files.py
   <version>` first to convert them to ffigen symbol-file imports, then extract.)

4. Add or adjust per-module `include-directives`, `deps`, `macros`, etc.
   directly in `configs/modules.yaml`. The `compiler-opts` `-I` list per version
   comes from `scripts/ffigen_helper.sh <version>` / `rootstrap/<version>`.

5. To generate binding code per target library, run:

   ```sh
   scripts/generate_bindings.sh <version>
   ```

   This runs the full binding pipeline in order:

   1. `symgen` — emit `generated_symbols.dart` from `symgen.yaml`.
   2. `gen_ffigen_configs.py` — expand the manifest into
      `configs/<version>/ffigen_*.yaml`. Any stale generated configs are pruned
      first, so the directory always matches the manifest. (These files are
      overwritten on every run — never edit them by hand; edit `modules.yaml`.)
   3. `ffigen`, run in **topological order** by `scripts/ffigen_order.py` so that
      a consumer's imported provider symbol files (`import.symbol-files`) already
      exist when ffigen processes it.
   4. `rename_unnamed.py` — prefix ffigen's anonymous `UnnamedStruct<N>` /
      `UnnamedUnion<N>` types with the module stem (e.g.
      `CapiMediaCameraUnnamedUnion1`) so they are globally unique. ffigen cannot
      rename these via config, and identical names in different modules are
      different types, so this prevents export collisions with no `hide` needed.

6. Generate the main `lib/<version>/tizen.dart` file which exports all bindings and initializes module instances:

   ```sh
   python3 scripts/generate_tizen.py <version>
   ```

   This script scans `generated_symbols.dart` and all individual binding files to construct the Dart codebase cleanly. It also detects symbols exported by more than one module (structs, typedefs, enums, top-level consts), keeps each on its owning module, and adds a `hide` clause on the other modules' `export`s automatically, so cross-module duplicates need no manual handling.
   If `dart analyze lib/<version>/tizen.dart` still reports issues after generation, see the **Handling Type Duplication Issues** section below.

7. Update callbacks data.

   `generate_callbacks.sh` reads the per-module `configs/<version>/ffigen_*.yaml`
   for every version under `configs/`. For versions generated from the manifest
   (their configs are gitignored build artifacts), run
   `scripts/generate_bindings.sh <version>` first — otherwise that version has no
   configs on disk and is silently skipped
   (`WARNING: No ffigen configs found for <version>`), which drops its callbacks
   from `generated_callbacks.cc`.

   * Run `./generate_callbacks.sh verify` to check type substitution.
     Build errors will have to be addressed by editing `gen_callbacks.py`.
     If substitution is not found or assert fails - edit the type mapping
     (see `CallbackDataCollector.type_substitute()` and maps used there: `KNOWN_TYPES`, `SPECIAL_TYPES`).
   * Run `./generate_callbacks.sh` to update `callbacks.cc` with callbacks data.

8. Convert Doxygen-style comments into Dartdoc format for the generated bindings:

   ```sh
   dart run ./scripts/convert_description.dart <version>
   ```

   This script will automatically process all `generated_bindings_*.dart` files inside the `lib/src/bindings/<version>` directory.

## Generating documentation

The `generate_doc_script.py` script generates markdown API documentation for all supported Tizen versions. It scans the `configs` directory and creates or overwrites `doc/tizen<version>_api.md` for each version.

Run the script with:

```sh
python3 scripts/generate_doc_script.py
```

## Handling Type Duplication Issues

Bindings are split per module and re-exported through `tizen.dart`, so the same
declaration appearing in two modules would collide. **Most of this is now handled
automatically** by the generation pipeline — you rarely need to touch anything by hand.

### Automatic handling

- **Shared types across modules** (e.g. `bundle`, `media_format_h`, `time_t`, EFL/glib
  types): the owning ("provider") module emits an ffigen **symbol file**
  (`output.symbol-file`) and every other ("consumer") module imports it via
  `import.symbol-files` in `configs/modules.yaml`. ffigen then references the provider's
  declaration instead of re-emitting it, so no duplicate is produced. `generate_bindings.sh`
  runs modules in topological order (`ffigen_order.py`) so provider symbol files exist
  first. This replaces the old hand-written `library-imports` + `type-map` dedup blocks.
  See `docs/superpowers/specs/2026-06-16-ffigen-symbol-file-bindings-design.md`.

- **Anonymous structs/unions** (ffigen names them `UnnamedStruct<N>` / `UnnamedUnion<N>`
  per file): `rename_unnamed.py` (run by `generate_bindings.sh`) prefixes them with the
  module stem (e.g. `CapiMediaCameraUnnamedUnion1`), making them globally unique. No `hide`
  is required.

- **Any remaining duplicate top-level export**: `generate_tizen.py` detects symbols emitted
  by more than one module (structs, typedefs, enums, top-level consts), keeps each on its
  owning module, and adds a `hide` clause on the other modules' `export`s in `tizen.dart`
  automatically.

### Manual escape hatches (rare)

Edit the module's entry in `configs/modules.yaml` — **not** the generated
`configs/<version>/ffigen_*.yaml`, which is overwritten on every run.

**Enum member duplication** — if the same unnamed-enum member name is emitted by two
modules and symbol-file import does not apply, rename it private in the consumer:

```yaml
enums:
  rename:
    'DD': '_DD'
```

**Generic/opaque C type that must map to a Dart basic type** (e.g. `typedef __time_t
time_t;`, which ffigen cannot use as a generic type argument) — map it directly in that
module:

```yaml
library-imports:
  ffi_lib: 'dart:ffi'
type-map:
  typedef:
    'time_t':   { lib: 'ffi_lib', c-type: 'Long', dart-type: 'int' }
    '__time_t': { lib: 'ffi_lib', c-type: 'Long', dart-type: 'int' }
```

**Unused callback not generated** — ffigen skips callbacks that no function references.
Force generation with a temporary header that uses the callback, added to that module's
`headers` (this is how `entrypoints_capi_appfw_app_common.h` etc. are used):

```c
// Temp_C.h
#include <app_common.h>
void _force_generate_app_event_cb(app_event_cb callback) {}
```

```yaml
headers:
  entry-points:
    - 'entrypoints.h'
    - 'Temp_C.h'
  include-directives:
    - '**/app_common.h'
    - 'Temp_C.h'
```
