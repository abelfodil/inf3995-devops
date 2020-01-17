#!/bin/bash

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
BUILD_DIR="$SOURCE_DIR/cmake-build"

rm -rf $BUILD_DIR

NINJA=""
if [ -x "$(command -v ninja)" ]; then
  NINJA="-GNinja"
fi

cmake -H"$SOURCE_DIR" -B"$BUILD_DIR" -DCMAKE_BUILD_TYPE=Release $NINJA && cmake --build "$BUILD_DIR" --target $1
