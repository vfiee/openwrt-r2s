## R2S 基于原生OpenWRT 的固件(AS IS, NO WARRANTY!!!)
![R2S-OpenWrt](https://github.com/miniers/openwrt-nanopi-r2s/workflows/R2S-OpenWrt/badge.svg)
![X86-OpenWrt](https://github.com/miniers/openwrt-nanopi-r2s/workflows/X86-OpenWrt/badge.svg)
### 请勿用于商业用途!!! 请勿用于商业用途!!! 请勿用于商业用途!!! 请勿用于商业用途!!! 请勿用于商业用途!!!

### 下载地址：
https://github.com/miniers/openwrt-nanopi-r2s/releases

### 追新党可以在Action中取每日更新（可能会翻车，风险自担，需要登陆github后才能下载）：
https://github.com/miniers/openwrt-nanopi-r2s/actions


### 注意事项：
0.R2S核心频率1.6

1.登陆IP：192.168.2.1 密码：无

2.OP内置升级可用

3.遇到上不了网的，请自行排查自己的ipv6联通情况。（推荐关闭ipv6，默认已关闭ipv6的dns解析，手动可以在DHCP/DNS里的高级设置中调整）

4.刷写或升级后遇到任何问题，可以尝试ssh进路由器，输入fuck，回车后等待重启，或可解决，如仍有异常，建议ssh进路由器，输入firstboot -y && reboot now，回车后等待重启

### 版本信息：
LUCI版本：21.02（当日最新）

其他模块版本：21.02（当日最新）

### 特性及功能：
1.O2编译

2.内置两款主题

3.首次启动会自动分配TF卡剩余空间至Overlay

4.插件包含：Npc, iperf3, MosDns, DiskMan, DockerMan, OpenClash, AdguardHome, BearDropper, 微信推送, 网易云解锁, SQM, 网络唤醒, DDNS, 迅雷快鸟, UPNP, FullCone(防火墙中开启, 默认开启), 流量分载(防火墙中开启), SFE流量分载(也就是SFE加速, 防火墙中开启, 且默认开启), BBR（默认开启）, irq优化, 京东签到, Zerotie, 无线打印, 流量监控, 过滤军刀

