#!/usr/bin/env bash

cd /srv/http/ImmortalWrt/ImageBuilder || exit
rm -rf immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64
curl -JLO https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv8/immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
tar xf immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
rm immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
cd immortalwrt-imagebuilder-rockchip-armv8.Linux-x86_64 || exit

make image PROFILE=friendlyarm_nanopi-r5c PACKAGES=" blockd bottom btrfs-progs cfdisk dosfstools htop ip-full iw-full iwlwifi-firmware-ax200 iwlwifi-firmware-ax210 kmod-fs-msdos kmod-igc kmod-iwlwifi kmod-mac80211 kmod-mt7921e kmod-nvme kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-ssl-openssl nano-full nvme-cli openssh-sftp-server pciutils usbutils wget-ssl wpad-openssl -automount -ipv6helper -kmod-rtw88-8822ce -libustream-openssl -ppp -ppp-mod-pppoe -rtl8822ce-firmware -uclient-fetch -wpad-basic-openssl"
make image PROFILE=friendlyarm_nanopi-r5s PACKAGES=" blockd bottom btrfs-progs cfdisk dosfstools htop ip-full iw-full iwlwifi-firmware-ax200 iwlwifi-firmware-ax210 kmod-fs-msdos kmod-igc kmod-iwlwifi kmod-mac80211 kmod-mt7921e kmod-nvme kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-ssl-openssl nano-full nvme-cli openssh-sftp-server pciutils usbutils wget-ssl wpad-openssl -automount -ipv6helper -libustream-openssl -ppp -ppp-mod-pppoe -uclient-fetch"
make image PROFILE=friendlyarm_nanopi-r6s PACKAGES=" blockd bottom btrfs-progs cfdisk dosfstools htop ip-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-ssl-openssl nano-full openssh-sftp-server usbutils wget-ssl -automount -ipv6helper -libustream-openssl -ppp -ppp-mod-pppoe -uclient-fetch"
