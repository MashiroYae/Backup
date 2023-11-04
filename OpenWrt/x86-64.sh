#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-x86-64.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/x86/64/openwrt-imagebuilder-x86-64.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-x86-64.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-x86-64.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-x86-64.Linux-x86_64 || exit

make image PROFILE=generic
