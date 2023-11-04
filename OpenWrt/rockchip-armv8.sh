#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-rockchip-armv8.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/openwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-rockchip-armv8.Linux-x86_64 || exit

make image PROFILE=friendlyarm_nanopi-r4s PACKAGES="auc blockd bottom btrfs-progs cfdisk curl dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-mac80211 kmod-usb-net-cdc-subset kmod-usb-storage-extras luci luci-app-attendedsysupgrade luci-app-uhttpd luci-ssl-openssl nano-full odhcpd openssh-sftp-server usbutils wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch"