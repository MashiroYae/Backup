#!/usr/bin/env bash

cd /srv/http/OpenWrt/ImageBuilder || exit
rm -rf openwrt-imagebuilder-23.05.2-mediatek-filogic.Linux-x86_64
curl -JLO https://downloads.openwrt.org/releases/23.05.2/targets/mediatek/filogic/openwrt-imagebuilder-23.05.2-mediatek-filogic.Linux-x86_64.tar.xz
tar xf openwrt-imagebuilder-23.05.2-mediatek-filogic.Linux-x86_64.tar.xz
rm openwrt-imagebuilder-23.05.2-mediatek-filogic.Linux-x86_64.tar.xz
cd openwrt-imagebuilder-23.05.2-mediatek-filogic.Linux-x86_64 || exit

make image PROFILE=xiaomi_redmi-router-ax6000-ubootmod PACKAGES="auc bottom dnsmasq-full htop ip-full iw-full luci luci-app-attendedsysupgrade luci-app-nlbwmon luci-app-vnstat2 luci-ssl-openssl nano-full openssh-sftp-server wget-ssl wpad-openssl -dnsmasq -libustream-mbedtls -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe -uclient-fetch -wpad-basic-mbedtls"
