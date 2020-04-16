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
