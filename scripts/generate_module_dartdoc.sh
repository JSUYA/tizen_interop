#!/usr/bin/env bash
# Copyright 2026 Samsung Electronics Co., Ltd. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd -P)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd -P)"

version="${1:-6.0}"
if [ "$#" -gt 0 ]; then
  shift
fi

cd "$ROOT_DIR"
dart run tool/generate_module_dartdoc.dart --version "$version" "$@"
