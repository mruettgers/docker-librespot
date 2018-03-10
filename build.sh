#!/bin/sh

set -xe

# Build Raspberry Pi image
(cd targets/rpi && ./cross_build.sh)

# Build amd64 image
docker build -t mruettgers/librespot targets/amd64/