#!/bin/sh

export CFLAGS=${CFLAGS/-fno-plt}
export CXXFLAGS=${CXXFLAGS/-fno-plt}
export LDFLAGS=${LDFLAGS/,-z,now}

./configure $XORG_CONFIG \
    --enable-glamor
make

make check

make install
