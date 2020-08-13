---
title: "{{ replace .TranslationBaseName "-" " " | title }}"
date: {{ .Date }}
draft: false
comments: true
description: 
author: 
fromurl: 
url:
slug: 
cover:
tags: []
series: []
categories: [技术, 闲话]
plugins: [code, math, dot]
---

## 历史记录

|Version| Action|Time|
|:-------:|:--------:|:-----------:|
|1.0|Init|{{ now.Format "2006-01-02 15:04" }}|