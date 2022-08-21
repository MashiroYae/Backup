#!/usr/bin/env bash

RPiVERSION=5.18.12-2
VERSION=5.19.2-2

cd /Users/mashiro/Library/Caches/mashiro/aarch64/
rm linux*.pkg.tar.zst

curl -JLO https://mirrors.manjaro.org/repo/arm-unstable/core/aarch64/linux-rpi4-mainline-$RPiVERSION-aarch64.pkg.tar.zst
#curl -JLO https://mirrors.manjaro.org/repo/arm-unstable/core/aarch64/linux-rpi4-mainline-headers-$VERSION-aarch64.pkg.tar.zst

curl -JLO https://mirrors.manjaro.org/repo/arm-unstable/core/aarch64/linux-$VERSION-aarch64.pkg.tar.zst
