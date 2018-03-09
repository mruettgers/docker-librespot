#!/bin/sh

set -xe

# Build Raspberry Pi image
(cd rpi && ./cross_build.sh)

# Build amd64 image
docker build -t mruettgers/librespot amd64/