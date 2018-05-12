#!/usr/bin/env bash

set -x -e

INCLUDE_PATH="${PREFIX}/include"
LIBRARY_PATH="${PREFIX}/lib"

./configure --with-features=huge --prefix=${PREFIX}
make -j $(nproc)
make install

