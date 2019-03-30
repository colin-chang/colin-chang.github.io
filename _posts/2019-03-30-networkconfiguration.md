---
layout: page
header: no
mediaplayer: true
title: "CentOS7网络配置"
subheadline:  "CentOS7配置网络连接和防火墙"
teaser: "<p>CentOS7安装完成后模式是网络是没有开启的，这时我们需要在配置文件中配置网络连接信息。服务器环境中多没有用户界面，下面我们就来看如何通过命令来修改CentOS7的网络配置。</p>"
categories:
    - IT
tags:
    - Linux
image:
    thumb: networkconfiguration-thumb.jpg
---

### 1. 开启网络连接
```sh
# 查看网卡配置
$ ip addr

# 根据网卡信息找到其配置文件
$ cd /etc/sysconfig/network-scripts/
```

找到配置文件后修改`ONBOOT`为`Yes`,意为随机打开网卡。`BOOTPROTO`为IP地址获取方式，`dhcp`为自动获取，也可以修改为`static`静态地址。

![开启网络连接]({{site.urlimg}}networkconfiguration-open.jpg)

完成以上修改后重启网络。
```sh
$ systemctl restart network
```
重启后稍等片刻等待自动获取IP后网络即可使用。可以使用`ping`命令测试网络
```sh
$ ping colin-chang.site
```

### 2. 防火墙设置
```sh
# 启动防火墙
$ sudo systemctl start firewalld.service

# 查看防火情状态
$ sudo firewall-cmd --state

# 开放 tcp:443 端口
$ sudo firewall-cmd --zone=public --add-port=443/tcp --permanent

# 重新加载配置
$ sudo firewall-cmd --reload

# 重启防火墙
# sudo systemctl restart firewalld.service

# 查看已开放端口
$  sudo firewall-cmd --list-ports
```

开放端口参数详解。

参数|含义
:-|:-
`--zone=public`|表示作用域为公共的
`--add-port=443/tcp`|添加tcp协议443端口
`--permanent`|永久生效，若无此参数，重启后修改失效
