#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/ramips/mt76x8/openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64 || exit

make image PROFILE=hiwifi_hc5611
