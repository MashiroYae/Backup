#!/usr/bin/env bash

cd /srv/http/ImmortalWrt/ImageBuilder || exit
rm -rf immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64
curl -JLO https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv8/immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
tar xf immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
rm immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
cd immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64 || exit

make image PROFILE=friendlyarm_nanopi-r5s PACKAGES="auc blockd bottom btrfs-progs cfdisk dosfstools htop ip-full iw-full kmod-fs-msdos kmod-mac80211 kmod-nvme kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full nvme-cli odhcp6c odhcpd openssh-sftp-server usbutils wget-ssl wpad-openssl -automount -ipv6helper -libustream-openssl -odhcpd-ipv6only -uclient-fetch"
make image PROFILE=friendlyarm_nanopi-r6s PACKAGES="auc blockd bottom btrfs-progs cfdisk dosfstools htop ip-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full odhcp6c odhcpd openssh-sftp-server usbutils wget-ssl -automount -ipv6helper -libustream-openssl -odhcpd-ipv6only -uclient-fetch"
