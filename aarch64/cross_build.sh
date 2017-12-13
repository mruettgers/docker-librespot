#!/bin/sh

set -xe

# Create temp directory for cross build
[ -d .build ] || mkdir .build

# Fetch sources
curl -sSL https://codeload.github.com/plietar/librespot/tar.gz/master | tar -zxvf- -C .build/

# Build cross compilation image
(cd .build/librespot-master && docker build -t librespot-cross -f ./contrib/Dockerfile .)

# Build librespot binary
docker run -v $(PWD)"/.build:/build" librespot-cross cargo build --release --target aarch64-unknown-linux-gnu --no-default-features

# Build image with cross compiled binary
docker build -t mruettgers/rpi-librespot ./

# Cleanup
[ ! -d .build ] || rm -rf .build