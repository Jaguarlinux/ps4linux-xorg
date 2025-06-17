#!/bin/sh

export CFLAGS=${CFLAGS/-fno-plt}
export CXXFLAGS=${CXXFLAGS/-fno-plt}
export LDFLAGS=${LDFLAGS/,-z,now}


NOCONFIGURE=1 ./autogen.sh
./configure $XORG_CONFIG \
    --enable-glamor
make

make check

make install