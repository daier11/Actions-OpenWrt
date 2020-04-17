#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.12.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan 
#git clone https://github.com/fw876/helloworld feeds/helloworl
sed -i '/helloworld/ a src-git helloworld https://github.com/fw876/helloworld ' feeds.conf.default
#git clone https://github.com/fw876/helloworld/tree/master/luci-app-ssr-plus package/luci-app-ssr-plus
./scripts/feeds update -a
./scripts/feeds install -a
sed -i 's/1.1.1.1/18.180.163.163/g' package/lean/luci-app-nps/root/etc/config/nps
sed -i 's/option crypt '1'/option crypt '0'/g' package/lean/luci-app-nps/root/etc/config/nps
