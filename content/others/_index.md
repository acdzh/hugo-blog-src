---
title: "工具页"
date: 2019-01-01T00:00:00+08:00
draft: false
comments: false
description: ""
tags: []
series: []
categories: []
nolicense: true
toc: true
---

## aria2

{{<section>}}
    <label for="secret">Password:</label>
    <input id="secret" type="text">
    <button id="panel">前往Aria2面板</button>
    <button id="downloads">查看下载文件</button>
    <script>
        function aria2ButtonsOnclick_asdad(val, type) {
            const oldAria2Key = localStorage.getItem('aria2key');
            if (val === '') { val = oldAria2Key; }
            else { localStorage.setItem('aria2key', val); }
            open(   type === 'panel' 
                    ? val === '' 
                        ? 'tools/aria2ng/' 
                        : 'tools/aria2ng/#!/settings/rpc/set/wss/acdzharia2.herokuapp.com/443/jsonrpc/'+btoa(val)
                    : 'https://acdzharia2.herokuapp.com/downloads/'+btoa(val)+'/',
                    '_blank');
        };
        panel.onclick=function(){aria2ButtonsOnclick_asdad(secret.value, 'panel');}
        downloads.onclick=function(){aria2ButtonsOnclick_asdad(secret.value, 'downloads');}
    </script>
{{</section>}}