#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-rockchip-armv8.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/rockchip/armv8/openwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-rockchip-armv8.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-rockchip-armv8.Linux-x86_64 || exit

make image PROFILE=friendlyarm_nanopi-r4s PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-mac80211 kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full openssh-sftp-server usbutils wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch"
make image PROFILE=friendlyarm_nanopi-r5c PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-nvme kmod-mac80211 kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full nvme-cli openssh-sftp-server pciutils usbutils wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch"
make image PROFILE=friendlyarm_nanopi-r5s PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-mac80211 kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full openssh-sftp-server pciutils usbutils wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch"
make image PROFILE=friendlyarm_nanopi-r6s PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-mac80211 kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full openssh-sftp-server usbutils wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch"
