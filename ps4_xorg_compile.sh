#!/bin/sh

export CFLAGS=${CFLAGS/-fno-plt}
export CXXFLAGS=${CXXFLAGS/-fno-plt}
export LDFLAGS=${LDFLAGS/-Wl,-z,now}

meson build \
  -D glamor=enabled

# Print config
meson configure build

meson compile -C build
  
meson test -C build --print-errorlogs
  
meson install -C build
  
