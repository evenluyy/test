#!/bin/bash
# rm -rf feeds/packages/net/v2ray-geodata
# Git稀疏克隆，只克隆指定目录到本地


# Default IP
sed -i 's/192.168.1.1/192.168.110.247/g' package/base-files/files/bin/config_generate

# Remove packages
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall2
# rm -rf feeds/packages/gst1-plugins-base
# Add packages
#git_sparse_clone main https://github.com/kenzok8/small-package luci-lib-taskd
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/amlogic
#git_sparse_clone main https://github.com/xiaorouji/openwrt-passwall luci-app-passwall
git_sparse_clone main https://github.com/xiaorouji/openwrt-passwall2 luci-app-passwall2
#git_sparse_clone main https://github.com/kenzok8/small-package luci-app-store
#git_sparse_clone main https://github.com/morytyann/OpenWrt-mihomo luci-app-mihomo mihomo
git clone https://github.com/kenzok8/small-package package/small-package 
# git clone https://github.com/xiaorouji/openwrt-passwall-packages package/passwall-packages 
# sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
# sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

