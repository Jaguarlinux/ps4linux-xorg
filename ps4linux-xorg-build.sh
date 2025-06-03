#!/bin/sh

export CFLAGS=${CFLAGS/-fno-plt}
export CXXFLAGS=${CXXFLAGS/-fno-plt}
export LDFLAGS=${LDFLAGS/,-z,now}


bash autogen.sh
mkdir -pv usr/
./configure --prefix=usr/ \
    --enable-glamor
make

make check

make install
