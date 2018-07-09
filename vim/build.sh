#!/usr/bin/env bash

set -x -e

INCLUDE_PATH="${PREFIX}/include"
LIBRARY_PATH="${PREFIX}/lib"

./configure --with-features=huge \
    --enable-pythoninterp=dynamic \
    --enable-python3interp=dynamic \
    --enable-gui=auto \
    --prefix=${PREFIX}

mkdir -p $PREFIX/share/vim/vim81

make -j $(nproc) VIMRUNTIMEDIR=$PREFIX/share/vim/vim81
make install

