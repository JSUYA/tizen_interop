#!/usr/bin/env bash
# Copyright 2021 Samsung Electronics Co., Ltd. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

set -e

SCRIPT_DIR=$(dirname $(readlink -f $0))
ROOT_DIR=$(readlink -f $SCRIPT_DIR/..)

version=$1
if [ -z "$version" ]; then
  echo "$(basename $0) <version>"
  exit 1
fi

if [ ! -d $ROOT_DIR/rootstraps/$version ]; then
  echo "No rootstrap found. Run copy_rootstrap.sh first."
  exit 1
fi

dart run symgen --config $ROOT_DIR/configs/$version/symgen.yaml

# Expand the manifest (configs/modules.yaml) into per-module ffigen configs.
# These are gitignored; the manifest is the committed source of truth.
if [ -f "$ROOT_DIR/configs/modules.yaml" ] && [ ! -f "$ROOT_DIR/configs/$version/ffigen.yaml" ]; then
    python3 "$SCRIPT_DIR/gen_ffigen_configs.py" "$version"
fi

if [ -f "$ROOT_DIR/configs/$version/ffigen.yaml" ]; then
    echo "Running ffigen with single config file..."
    dart run ffigen --config $ROOT_DIR/configs/$version/ffigen.yaml --ignore-source-errors
else
    echo "Running ffigen for module-specific configs (topological order)..."
    config_dir="$ROOT_DIR/configs/$version"
    count=0

    # Providers emit symbol files here; consumers import them. Must exist first.
    mkdir -p "$config_dir/.symbols"

    # Generate in dependency order so a consumer's imported symbol files already
    # exist when ffigen runs it.
    while IFS= read -r config_file; do
        [ -e "$config_file" ] || continue

        count=$((count + 1))
        filename=$(basename "$config_file")
        echo "[$count] Processing $filename..."
        dart run ffigen --config "$config_file" --ignore-source-errors
    done < <(python3 "$SCRIPT_DIR/ffigen_order.py" "$version")

    if [ $count -eq 0 ]; then
        echo "Error: No ffigen config files found in $config_dir"
        exit 1
    fi

    echo "Completed $count module(s)"
fi

# Give anonymous structs/unions module-unique names so they never collide across
# modules when re-exported through tizen.dart (ffigen cannot rename these).
python3 "$SCRIPT_DIR/rename_unnamed.py" "$version"
