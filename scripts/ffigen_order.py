#!/usr/bin/env python3
# Copyright 2026 Samsung Electronics Co., Ltd. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

"""Print configs/<version>/ffigen_*.yaml paths in topological order.

A config that imports another module's symbol file (`import.symbol-files`) must
run after the config that produces it (`output.symbol-file`). This emits a valid
generation order (providers before consumers); alphabetical within each rank for
determinism. Exits non-zero if a dependency cycle is detected.

Usage:
    python3 scripts/ffigen_order.py <version>
"""

import glob
import os
import re
import sys

import yaml


def main():
    if len(sys.argv) != 2:
        print('usage: ffigen_order.py <version>', file=sys.stderr)
        return 1
    version = sys.argv[1]
    root = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
    config_dir = os.path.join(root, 'configs', version)
    files = sorted(glob.glob(os.path.join(config_dir, 'ffigen_*.yaml')))

    module_to_file = {}
    deps = {}
    for path in files:
        with open(path) as f:
            d = yaml.safe_load(f)
        output = d['output']
        bindings = output['bindings'] if isinstance(output, dict) else output
        module = re.search(r'generated_bindings_(.+)\.dart', bindings).group(1)
        module_to_file[module] = path
        dep_mods = []
        for sym in ((d.get('import') or {}).get('symbol-files') or []):
            mm = re.search(r'([^/]+)\.yaml$', sym)
            if mm:
                dep_mods.append(mm.group(1))
        deps[module] = dep_mods

    # Kahn's algorithm, alphabetical tie-break.
    ordered = []
    done = set()
    remaining = sorted(deps)
    while remaining:
        progressed = False
        for module in list(remaining):
            if all(dep in done for dep in deps[module]):
                ordered.append(module)
                done.add(module)
                remaining.remove(module)
                progressed = True
        if not progressed:
            print(f'Dependency cycle among: {", ".join(remaining)}',
                  file=sys.stderr)
            return 2

    for module in ordered:
        print(module_to_file[module])
    return 0


if __name__ == '__main__':
    sys.exit(main())
