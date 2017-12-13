#!/bin/sh

set -xe

# Build Raspberry Pi image
(cd rpi && ./cross_build.sh)
