#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-ramips-mt7620.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/ramips/mt7620/openwrt-imagebuilder-ramips-mt7620.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-ramips-mt7620.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-ramips-mt7620.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-ramips-mt7620.Linux-x86_64 || exit

make image PROFILE=asus_rt-ac51u PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage-extras luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch -wpad-basic-mbedtls"
make image PROFILE=hiwifi_hc5761 PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage-extras luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch -wpad-basic-mbedtls"
make image PROFILE=hiwifi_hc5861 PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage-extras luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch -wpad-basic-mbedtls"
