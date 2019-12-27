#!/bin/sh

set -xe

# Build Raspberry Pi image
docker buildx build --platform=linux/arm/v7 -t mruettgers/librespot -f targets/rpi/Dockerfile . $@

# Build amd64 image
# docker build -t mruettgers/librespot -f targets/amd64/Dockerfile .
