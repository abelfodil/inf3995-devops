#!/bin/bash

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
BUILD_DIR="$SOURCE_DIR/cmake-build"

NINJA=$([ -x "$(command -v ninja)" ] && echo "-GNinja")
cmake -H"$SOURCE_DIR" -B"$BUILD_DIR" -DCMAKE_BUILD_TYPE=Release $NINJA && cmake --build "$BUILD_DIR" --target $1
