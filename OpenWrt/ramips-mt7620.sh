#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-ramips-mt7620.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/ramips/mt7620/openwrt-imagebuilder-ramips-mt7620.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-ramips-mt7620.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-ramips-mt7620.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-ramips-mt7620.Linux-x86_64 || exit

make image PROFILE=glinet_gl-mt300a PACKAGES="auc blockd dnsmasq-full htop ip-full iw-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full odhcpd openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch -wpad-basic-mbedtls"
make image PROFILE=hiwifi_hc5761 PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full odhcpd openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch -wpad-basic-mbedtls"
make image PROFILE=hiwifi_hc5861 PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full odhcpd openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch -wpad-basic-mbedtls"
