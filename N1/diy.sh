#!/bin/bash
# rm -rf feeds/packages/net/v2ray-geodata
# Default IP
sed -i 's/192.168.1.1/192.168.110.247/g' package/base-files/files/bin/config_generate

# Remove packages
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall2

# Add packages
# git clone https://github.com/kenzok8/small-package package/small-package
git clone https://github.com/xiaorouji/openwrt-passwall package/passwall
git clone https://github.com/xiaorouji/openwrt-passwall2 package/passwall2
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/amlogic
