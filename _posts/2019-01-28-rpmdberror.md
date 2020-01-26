---
layout: page
header: no
mediaplayer: true
title: "CentOS yum 错误 rpmdb open failed"
subheadline:  "CentOS7使用yum错误解决方案"
teaser: "<p>在centos系统上，在使用yum命令安装软件包时候报错：</p>"
categories:
    - IT
tags:
    - Linux
image:
    thumb: 21/1kptZq.jpg
---

```sh
rpmdb: Thread/process 35884/139793484506880 failed: Thread died in Berkeley DB library
error: db3 error(-30974) from dbenv->failchk: DB_RUNRECOVERY: Fatal error, run database recovery
error: cannot open Packages index using db3 - (-30974)
error: cannot open Packages database in /var/lib/rpm
CRITICAL:yum.main:

Error: rpmdb open failed
```

原因是RPM数据库被破坏,使用以下命令重建数据库后即可修复：

```sh
$ cd /var/lib/rpm
$ ls | grep 'db.'
$ rm -f __db.*
$ rpm --rebuilddb
$ yum clean all
```