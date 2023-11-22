#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-bcm27xx-bcm2712.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/bcm27xx/bcm2712/openwrt-imagebuilder-bcm27xx-bcm2712.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-bcm27xx-bcm2712.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-bcm27xx-bcm2712.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-bcm27xx-bcm2712.Linux-x86_64 || exit

make image PROFILE=rpi-5 PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-igc kmod-mac80211 kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full openssh-sftp-server pciutils usbutils wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch -wpad-basic-mbedtls"
