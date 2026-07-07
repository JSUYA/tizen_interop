#!/usr/bin/env python3
# Copyright 2026 Samsung Electronics Co., Ltd. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

"""Bootstrap configs/modules.yaml from existing configs/<version>/ffigen_*.yaml.

Each ffigen config splits into two parts:
  * SHARED, identical across a version (and mostly across versions): the
    `preamble`, `llvm-path`, and the `compiler-opts` block.
  * UNIQUE per module: everything else (name, description, output + symbol-file,
    headers, import, type-map, macros, enums, ...).

The manifest stores the shared parts once (`template` + per-version
`compiler-opts`) and every module's unique part verbatim. This captures ALL
ffigen options (no field is derived or dropped), so regenerated configs parse to
semantically identical configs and produce byte-identical bindings.

Merges into an existing modules.yaml so it can grow per version.
Usage: python3 scripts/extract_manifest.py <version>
"""

import glob
import os
import re
import sys

import yaml

SHARED = {'preamble', 'llvm-path', 'compiler-opts'}


def module_id(output):
    bindings = output['bindings'] if isinstance(output, dict) else output
    return re.search(r'generated_bindings_(.+)\.dart', bindings).group(1)


def main():
    if len(sys.argv) != 2:
        print('usage: extract_manifest.py <version>', file=sys.stderr)
        return 1
    version = sys.argv[1]
    root = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
    config_dir = os.path.join(root, 'configs', version)
    manifest_path = os.path.join(root, 'configs', 'modules.yaml')

    manifest = {'template': {}, 'versions': {}, 'modules': {}}
    if os.path.exists(manifest_path):
        loaded = yaml.safe_load(open(manifest_path)) or {}
        for key in ('template', 'versions', 'modules'):
            manifest[key] = loaded.get(key, {})

    compiler_opts_seen = None
    version_modules = []
    for path in sorted(glob.glob(os.path.join(config_dir, 'ffigen_*.yaml'))):
        d = yaml.safe_load(open(path))
        mid = module_id(d['output'])
        version_modules.append(mid)

        # Shared parts: captured once (constant across a version's modules).
        manifest['template'].setdefault('preamble', d.get('preamble'))
        manifest['template'].setdefault('llvm-path', d.get('llvm-path'))
        opts = d['compiler-opts']
        if compiler_opts_seen is None:
            compiler_opts_seen = opts
        elif opts != compiler_opts_seen:
            print(f'WARNING: {mid} has divergent compiler-opts', file=sys.stderr)

        # Everything else is the module's unique config, stored verbatim.
        manifest['modules'][mid] = {k: v for k, v in d.items() if k not in SHARED}

    manifest['versions'][version] = {
        'modules': sorted(version_modules),
        'compiler-opts': compiler_opts_seen,
    }
    # Sort modules by id for readability; preserve key order WITHIN each entry
    # (sort_keys=False) so type-map order — which affects ffigen output — matches.
    manifest['modules'] = {k: manifest['modules'][k]
                           for k in sorted(manifest['modules'])}

    with open(manifest_path, 'w') as f:
        yaml.safe_dump(manifest, f, default_flow_style=False, sort_keys=False,
                       width=200)
    print(f'wrote {manifest_path}: {len(manifest["modules"])} modules, '
          f'version {version} ({len(version_modules)} modules, '
          f'{len(compiler_opts_seen)} compiler-opts)')
    return 0


if __name__ == '__main__':
    sys.exit(main())
