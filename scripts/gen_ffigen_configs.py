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

import glob
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
    vinfo = (manifest.get('versions') or {}).get(version)
    if not vinfo:
        # Not yet migrated into the manifest: leave the version's existing
        # committed ffigen_*.yaml in place (generate_bindings.sh uses those).
        print(f'Version {version} not in manifest; using existing configs.')
        return 0

    gen_dir = os.path.join(root, 'configs', version)
    os.makedirs(gen_dir, exist_ok=True)

    # Prune stale generated configs first, so the directory ends up matching the
    # manifest exactly. A module removed or renamed in the manifest otherwise
    # leaves an orphan ffigen_<old>.yaml on disk; ffigen_order.py globs the
    # directory (not the manifest), so the orphan would still be picked up and
    # regenerated into a stale binding. Only ffigen_*.yaml is removed -- the
    # single-config ffigen.yaml and symgen.yaml lack the underscore and never
    # match this glob. This runs only for manifest-listed (migrated) versions,
    # whose configs are gitignored build artifacts; unmigrated versions return
    # early above with their committed configs untouched.
    pruned = 0
    for stale in glob.glob(os.path.join(gen_dir, 'ffigen_*.yaml')):
        os.remove(stale)
        pruned += 1

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

    print(f'Generated {len(vinfo["modules"])} configs in {gen_dir} '
          f'(pruned {pruned} stale).')
    return 0


if __name__ == '__main__':
    sys.exit(main())
