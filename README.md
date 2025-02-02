forked from 大佬nantayo项目: [nantayo/N1-OpenWrt](https://github.com/nantayo/N1-OpenWrt)<br>
斐讯N1盒子  openwrt 24.10<br>

自用版本 默认Ip 192.168.110.247<br>

无拨号，无无线网络！<br>

内核默认拉取最新<br>

如需他用自行forke编译！fork后请删除 N1/files/etc/config 文件夹下network,dhcp两个文件,并修改N1/div.sh第七行的ip:192.168.110.247为自己的网段ip。然后到Actions选择Build ImmortalWrt for N1 24  启动编译，等2.5小时！<br>

     

默认安装:<br>
samba4<br>
PassWall2<br>
如需其他插件自行到N1/.config文件添加！<br>
# 致谢
本项目基于 [ImmortalWrt-24.10](https://github.com/immortalwrt/immortalwrt/tree/openwrt-23.05) 源码编译，使用 flippy 的[脚本](https://github.com/unifreq/openwrt_packit)和 breakings 维护的[内核](https://github.com/breakings/OpenWrt/releases/tag/kernel_stable)打包成完整固件，感谢开发者们的无私分享。<br>
flippy 固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)。
