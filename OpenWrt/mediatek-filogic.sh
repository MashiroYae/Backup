#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-mediatek-filogic.Linux-x86_64
curl -JLO https://downloads.openwrt.org/snapshots/targets/mediatek/filogic/openwrt-imagebuilder-mediatek-filogic.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-mediatek-filogic.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-mediatek-filogic.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-mediatek-filogic.Linux-x86_64 || exit

make image PROFILE=bananapi_bpi-r3 PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-nvme kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-proto-qmi luci-ssl-openssl nano-full nvme-cli odhcpd openssh-sftp-server pciutils usbutils wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch -wpad-basic-mbedtls"
make image PROFILE=glinet_gl-mt3000 PACKAGES="auc blockd bottom dnsmasq-full htop ip-full iw-full kmod-fs-msdos kmod-fs-btrfs kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full odhcpd openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch -wpad-basic-mbedtls"
make image PROFILE=glinet_gl-mt6000 PACKAGES="auc blockd bottom btrfs-progs cfdisk dnsmasq-full dosfstools fdisk htop ip-full iw-full kmod-fs-msdos kmod-usb-net-cdc-subset kmod-usb-storage-extras kmod-usb-storage-uas luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full odhcpd openssh-sftp-server usbutils wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch -wpad-basic-mbedtls"
make image PROFILE=xiaomi_redmi-router-ax6000-ubootmod PACKAGES="auc bottom dnsmasq-full htop ip-full iw-full luci luci-app-attendedsysupgrade luci-ssl-openssl nano-full odhcpd openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcpd-ipv6only -uclient-fetch -wpad-basic-mbedtls"
