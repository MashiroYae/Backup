#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/ramips/mt76x8/openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64 || exit

make image PROFILE=hiwifi_hc5611 PACKAGES="auc blockd dnsmasq-full ip-full iw-full kmod-fs-btrfs kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage luci luci-app-attendedsysupgrade luci-ssl-openssl odhcpd openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch -wpad-basic-mbedtls"
