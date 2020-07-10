#!/bin/bash
cd friendlywrt-rk3328/friendlywrt
cd package/lean/
rm -rf luci-theme-argon
pwd
git clone -b 18.06 --depth 1 https://github.com/jerrykuku/luci-theme-argon.git
cd ..

pwd
git clone --depth 1 https://github.com/rufengsuixing/luci-app-adguardhome.git

pwd
git clone --depth 1 https://github.com/tty228/luci-app-serverchan.git

git clone --depth 1 -b master https://github.com/vernesong/OpenClash.git

pwd
git clone --depth 1 https://github.com/coolsnowwolf/lede/tree/master/package/lean/luci-app-cpufreq.git

mv OpenClash/luci-app-openclash/ ./
rm -rf OpenClash/

git clone --depth 1 https://github.com/fw876/helloworld.git

git clone --depth 1 https://github.com/songchenwen/nanopi-r2s.git
cp -r nanopi-r2s/luci-app-r2sflasher ./
rm -rf nanopi-r2s
pwd
ls

cd ..
pwd
echo "src-git scw https://github.com/songchenwen/openwrt-package" >> feeds.conf.default
echo "src-git xwrt https://github.com/x-wrt/com.x-wrt" >> feeds.conf.default

echo "feeds.conf.default"
cat feeds.conf.default
