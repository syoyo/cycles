#!/bin/bash

CMAKE_BIN=cmake

rm -rf build-aarch64-cross

$CMAKE_BIN \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_INSTALL_PREFIX=$HOME/local/cross/embree3 \
  -DCMAKE_C_COMPILER=aarch64-linux-gnu-gcc-5 \
  -DCMAKE_CXX_COMPILER=aarch64-linux-gnu-g++-5 \
  -DWITH_CYCLES_LOGGING=On \
  -Bbuild-aarch64-cross -H.
