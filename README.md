# jmuSupplicant-OpenWrt-ipk

这是 [jmuSupplicant](https://github.com/ShanQincheng/jmuSupplicant) 的 OpenWrt 版本，简化了编译过程

## 编译

```bash
# 下载并解压 sdk
wget https://mirrors.tuna.tsinghua.edu.cn/lede/releases/18.06.4/targets/ar71xx/generic/openwrt-sdk-18.06.4-ar71xx-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz
tar xJf openwrt-sdk-18.06.4-ar71xx-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz
# 更新 feeds
cd openwrt-sdk-18.06.4-ar71xx-generic_gcc-7.3.0_musl.Linux-x86_64
./scripts/feeds update -a
./scripts/feeds install -a
# 选择要编译的包 Network -> [M]jmusupplicant
git clone https://github.com/openjmu/jmuSupplicant-OpenWrt-ipk.git package/jmusupplicant
make menuconfig
# 开始编译
make package/jmusupplicant/compile V=99
```
