#!/bin/bash
# rm -rf feeds/packages/net/v2ray-geodata
# Git稀疏克隆，只克隆指定目录到本地
function git_sparse_clone() {
  branch="$1" repourl="$2" && shift 2
  git clone --depth=1 -b $branch --single-branch --filter=blob:none --sparse $repourl
  repodir=$(echo $repourl | awk -F '/' '{print $(NF)}')
  cd $repodir && git sparse-checkout set $@
  mv -f $@ ../package
  cd .. && rm -rf $repodir
}

# Default IP
sed -i 's/192.168.1.1/192.168.110.247/g' package/base-files/files/bin/config_generate

# Remove packages
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall2

# Add packages
#git_sparse_clone main https://github.com/kenzok8/small-package luci-lib-taskd
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/amlogic
#git_sparse_clone main https://github.com/xiaorouji/openwrt-passwall luci-app-passwall
#git_sparse_clone main https://github.com/xiaorouji/openwrt-passwall2 luci-app-passwall2
#git_sparse_clone main https://github.com/kenzok8/small-package luci-app-store
#git_sparse_clone main https://github.com/morytyann/OpenWrt-mihomo luci-app-mihomo mihomo
git clone https://github.com/kenzok8/small-package package/small-package

rm -rf package/small-package/luci-app-openvpn-server
rm -rf package/small-package/openvpn-easy-rsa-whisky
rm -rf package/small-package/luci-app-wrtbwmon
rm -rf package/small-package/wrtbwmon
rm -rf package/small-package/luci-app-koolproxyR
rm -rf package/small-package/luci-app-godproxy
rm -rf package/small-package/luci-app-argon*
rm -rf package/small-package/luci-theme-argon*
rm -rf package/small-package/luci-app-amlogic
rm -rf package/small-package/luci-app-unblockneteasemusic
rm -rf package/small-package/upx-static
rm -rf package/small-package/upx
rm -rf package/small-package/firewall*
rm -rf package/small-package/opkg
rm -rf package/small-package/luci-app-bandwidthd
rm -rf package/small-package/luci-app-bypass
rm -rf package/small-package/luci-app-dogcom
rm -rf package/small-package/luci-app-gowebdav
rm -rf package/small-package/luci-app-onliner
rm -rf package/small-package/luci-app-nginx-pingos
rm -rf package/small-package/luci-app-ssr-plus
rm -rf package/small-package/base-files
rm -rf package/feeds/packages/aliyundrive-webdav
rm -rf feeds/packages/multimedia/aliyundrive-webdav
rm -rf package/feeds/packages/perl-xml-parser
rm -rf package/feeds/packages/xfsprogs
rm -rf package/small-package/natflow
