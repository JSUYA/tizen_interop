#!/usr/bin/env python3
# Copyright 2026 Samsung Electronics Co., Ltd. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

"""Expand configs/modules.yaml into per-module ffigen configs.

Recombines the shared parts (`preamble`, `llvm-path` from `template`; the
per-version `compiler-opts`) with each module's verbatim unique config. This
replaces hand-maintained `configs/<version>/ffigen_*.yaml`: the manifest is the
only committed source. Generated configs are written next to the version's
symgen.yaml/entrypoints (so relative paths resolve identically) and are
gitignored.

Usage: python3 scripts/gen_ffigen_configs.py <version>
"""

import os
import sys

import yaml


def main():
    if len(sys.argv) != 2:
        print('usage: gen_ffigen_configs.py <version>', file=sys.stderr)
        return 1
    version = sys.argv[1]
    root = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
    manifest = yaml.safe_load(open(os.path.join(root, 'configs', 'modules.yaml')))

    template = manifest.get('template') or {}
    vinfo = manifest['versions'].get(version)
    if not vinfo:
        print(f'No version {version} in manifest', file=sys.stderr)
        return 1

    gen_dir = os.path.join(root, 'configs', version)
    os.makedirs(gen_dir, exist_ok=True)

    for mid in vinfo['modules']:
        entry = manifest['modules'][mid]
        # Shared parts first, then the module's verbatim config, then the shared
        # compiler-opts. ffigen is order-insensitive; this is just for reading.
        full = {}
        if template.get('preamble') is not None:
            full['preamble'] = template['preamble']
        if template.get('llvm-path') is not None:
            full['llvm-path'] = template['llvm-path']
        full.update(entry)
        full['compiler-opts'] = vinfo['compiler-opts']

        text = yaml.safe_dump(full, default_flow_style=False, sort_keys=False,
                              width=200)
        with open(os.path.join(gen_dir, f'ffigen_{mid}.yaml'), 'w') as f:
            f.write(text)

    print(f'Generated {len(vinfo["modules"])} configs in {gen_dir}')
    return 0


if __name__ == '__main__':
    sys.exit(main())
