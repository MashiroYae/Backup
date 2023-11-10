#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-bcm27xx-bcm2711.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/bcm27xx/bcm2711/openwrt-imagebuilder-bcm27xx-bcm2711.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-bcm27xx-bcm2711.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-bcm27xx-bcm2711.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-bcm27xx-bcm2711.Linux-x86_64 || exit

make image PROFILE=rpi-4 PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full odhcpd openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch -wpad-basic-mbedtls"
