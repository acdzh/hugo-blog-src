---
title: "vhdx 文件装载后无法卸载"
date: 2019-10-09T23:30:00+08:00
draft: false
comments: true
description: ""
tags: [Windows, Hyper-V]
series: []
categories: [技术, Windows]
plugins: 
---

## 尝试1: 在磁盘管理器中卸载

磁盘管理器中并无相关选项

## 尝试2: 

在设备管理器中卸载掉对应的虚拟磁盘驱动器(但是刷新后又回来了), 尝试修改原 vhdx 文件, 提示正在被 System使用, 无法更改. 但在资源管理器中搜索, 并没有找到使用该文件的进程.

## 解决途径

在服务里关闭 Virtual Disk.

----------------

ps.百度是真的垃圾, 一点用都没用, 搜索的结果全是不相关内容

## 历史记录

|Version| Action|Time|
|:-------:|:--------:|:-----------:|
|1.0|Init|2019-10-09 23:30|
|1.0|迁移至 blog|2020-04-26 22:45|