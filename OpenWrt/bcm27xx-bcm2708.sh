#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-bcm27xx-bcm2708.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/bcm27xx/bcm2708/openwrt-imagebuilder-bcm27xx-bcm2708.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-bcm27xx-bcm2708.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-bcm27xx-bcm2708.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-bcm27xx-bcm2708.Linux-x86_64 || exit

make image PROFILE=rpi
