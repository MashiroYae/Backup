#!/usr/bin/env bash

cd /srv/http/ImmortalWrt/ImageBuilder || exit
rm -rf immortalwrt-imagebuilder-mediatek-filogic.Linux-x86_64
curl -JLO https://downloads.immortalwrt.org/snapshots/targets/mediatek/filogic/immortalwrt-imagebuilder-mediatek-filogic.Linux-x86_64.tar.xz
tar xf immortalwrt-imagebuilder-mediatek-filogic.Linux-x86_64.tar.xz
rm immortalwrt-imagebuilder-mediatek-filogic.Linux-x86_64.tar.xz
cd immortalwrt-imagebuilder-mediatek-filogic.Linux-x86_64 || exit

make image PROFILE=bananapi_bpi-r3-mini PACKAGES=" blockd bottom btrfs-progs cfdisk dosfstools htop ip-full iw-full kmod-fs-msdos kmod-nvme kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-ssl-openssl nano-full nvme-cli openssh-sftp-server pciutils usbutils wget-ssl -automount -bridger -ipv6helper -libustream-openssl -ppp -ppp-mod-pppoe -uclient-fetch"
