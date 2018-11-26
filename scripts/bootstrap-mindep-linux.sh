#!/bin/bash

CMAKE_BIN=cmake
BUILD_DIR=build-mindep

rm -rf ${BUILD_DIR}

$CMAKE_BIN \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_INSTALL_PREFIX=$HOME/local/cycles-mindep \
  -DWITH_CYCLES_LOGGING=On \
  -DWITH_CYCLES_MINDEP=On \
  -B${BUILD_DIR} -H.
