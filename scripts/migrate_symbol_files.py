#!/usr/bin/env python3
# Copyright 2026 Samsung Electronics Co., Ltd. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

"""Migrate per-module ffigen configs to ffigen 11 symbol-file import.

For a given Tizen version, this rewrites configs/<version>/ffigen_*.yaml so that:

  * Provider modules (any module imported by another) emit a symbol file via
    `output.symbol-file`.
  * Consumer modules replace their hand-written `library-imports` + module
    `type-map` entries with `import.symbol-files` pointing at their providers'
    symbol files. ffigen then reuses the provider's declarations instead of
    re-emitting them, eliminating cross-file duplicate declarations.

`dart:ffi` mappings (e.g. time_t/pid_t -> Long/Int) are NOT module redirects and
are preserved verbatim.

Formatting outside the library-imports/type-map region (preamble, compiler-opts
with its comments, enums) is preserved by surgical text replacement.

Usage:
    python3 scripts/migrate_symbol_files.py <version> [--dry-run]
"""

import argparse
import glob
import os
import re
import sys

import yaml

SYMBOLS_DIR = '.symbols'


def module_of_output(output):
    """Return module stem X from a `generated_bindings_X.dart` path (str or map)."""
    path = output['bindings'] if isinstance(output, dict) else output
    m = re.search(r'generated_bindings_(.+)\.dart', path)
    return m.group(1) if m else None


def bindings_path(output):
    return output['bindings'] if isinstance(output, dict) else output


def parse(path):
    with open(path) as f:
        return yaml.safe_load(f)


def collect_providers(config_files):
    """Module names imported by at least one config (i.e. providers)."""
    providers = set()
    for path in config_files:
        d = parse(path)
        for alias, target in (d.get('library-imports') or {}).items():
            if target != 'dart:ffi':
                m = re.search(r'generated_bindings_(.+)\.dart', target)
                if m:
                    providers.add(m.group(1))
    return providers


def deps_of(d):
    """Module names this config depends on (from library-imports module entries)."""
    deps = []
    for alias, target in (d.get('library-imports') or {}).items():
        if target != 'dart:ffi':
            m = re.search(r'generated_bindings_(.+)\.dart', target)
            if m:
                deps.append(m.group(1))
    return sorted(set(deps))


def ffi_aliases(d):
    return {a for a, t in (d.get('library-imports') or {}).items() if t == 'dart:ffi'}


def build_middle(d):
    """Build the replacement text for the library-imports/type-map region.

    Returns '' when the config has no module deps and no ffi mappings.
    """
    ffi = ffi_aliases(d)
    deps = deps_of(d)
    lines = []

    if deps:
        lines.append('import:')
        lines.append('  symbol-files:')
        for dep in deps:
            lines.append(f"    - '{SYMBOLS_DIR}/{dep}.yaml'")

    if ffi:
        if lines:
            lines.append('')
        lines.append('library-imports:')
        for alias in sorted(ffi):
            lines.append(f"  {alias}: 'dart:ffi'")

    # Preserve only type-map entries that map to a kept (ffi) alias.
    kept_tm = {}
    for category, entries in (d.get('type-map') or {}).items():
        kept = {name: spec for name, spec in entries.items()
                if spec.get('lib') in ffi}
        if kept:
            kept_tm[category] = kept

    if kept_tm:
        if lines:
            lines.append('')
        lines.append('type-map:')
        for category, entries in kept_tm.items():
            lines.append(f'  {category}:')
            for name, spec in entries.items():
                lines.append(f"    '{name}':")
                lines.append(f"      lib: '{spec['lib']}'")
                lines.append(f"      c-type: '{spec['c-type']}'")
                lines.append(f"      dart-type: '{spec['dart-type']}'")

    return '\n'.join(lines)


def transform_text(text, d, is_provider):
    """Return rewritten file text."""
    module = module_of_output(d['output'])

    # 1. Convert provider output: 'path' -> output map with symbol-file.
    if is_provider and not isinstance(d['output'], dict):
        bpath = bindings_path(d['output'])
        new_output = (
            'output:\n'
            f"  bindings: '{bpath}'\n"
            '  symbol-file:\n'
            f"    output: '{SYMBOLS_DIR}/{module}.yaml'\n"
            f"    import-path: 'generated_bindings_{module}.dart'"
        )
        text = re.sub(
            r"^output:\s*'[^']+'\s*$",
            lambda _: new_output,
            text,
            count=1,
            flags=re.MULTILINE,
        )

    # 2. Replace the library-imports/type-map region (only if present).
    has_li = re.search(r'^library-imports:', text, re.MULTILINE)
    has_tm = re.search(r'^type-map:', text, re.MULTILINE)
    if has_li or has_tm:
        start = min(m.start() for m in
                    [has_li, has_tm] if m is not None)
        cm = re.search(r'^compiler-opts:', text, re.MULTILINE)
        end = cm.start()
        middle = build_middle(d)
        replacement = (middle + '\n\n') if middle else ''
        text = text[:start] + replacement + text[end:]

    return text


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('version')
    ap.add_argument('--dry-run', action='store_true')
    ap.add_argument('--only', help='comma-separated module stems to limit (preview)')
    args = ap.parse_args()

    root = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
    config_dir = os.path.join(root, 'configs', args.version)
    config_files = sorted(glob.glob(os.path.join(config_dir, 'ffigen_*.yaml')))
    if not config_files:
        print(f'No configs in {config_dir}', file=sys.stderr)
        return 1

    providers = collect_providers(config_files)
    print(f'Providers ({len(providers)}): {", ".join(sorted(providers))}\n')

    only = set(args.only.split(',')) if args.only else None
    changed = 0
    for path in config_files:
        d = parse(path)
        module = module_of_output(d['output'])
        if only and module not in only:
            continue
        with open(path) as f:
            original = f.read()
        new_text = transform_text(original, d, module in providers)
        if new_text != original:
            changed += 1
            if args.dry_run:
                print(f'--- would change: {os.path.basename(path)} ---')
            else:
                with open(path, 'w') as f:
                    f.write(new_text)
    print(f'\n{"Would change" if args.dry_run else "Changed"} {changed} files.')
    return 0


if __name__ == '__main__':
    sys.exit(main())
