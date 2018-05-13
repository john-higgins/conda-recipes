#!/usr/bin/env bash

set -x -e

INCLUDE_PATH="${PREFIX}/include"
LIBRARY_PATH="${PREFIX}/lib"

./configure --with-features=huge \
    --enable-pythoninterp=yes \
    --enable-python3interp=yes \
    --prefix=${PREFIX}
make -j $(nproc)
make install

