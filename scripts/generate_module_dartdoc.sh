#!/usr/bin/env bash
# Copyright 2026 Samsung Electronics Co., Ltd. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

set -e

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
ROOT_DIR=$(readlink -f "$SCRIPT_DIR/..")

version="${1:-6.0}"
shift $(( $# > 0 ? 1 : 0 ))

cd "$ROOT_DIR"
dart run tool/generate_module_dartdoc.dart --version "$version" "$@"
