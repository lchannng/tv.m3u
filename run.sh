#!/bin/bash
# File  : run.sh
# Author: lchannng <l.channng@gmail.com>
# Date  : 2022/09/04 16:03:00

m3u_file="https://iptv-org.github.io/iptv/countries/cn.m3u"
# m3u_file="https://github.com/SoPudge/kodi_iptv_epg/blob/master/iptv.m3u"
# m3u_file="https://raw.githubusercontent.com/frankwuzp/iptv-cn/main/tv-ipv4-cmcc.m3u"
mkdir -p ./output
docker run --rm -v `pwd`/output:/data -e PUID=1000 -e PGID=1000 lchannng/iptv-checker -d -p 32 -o /data/ ${m3u_file}

git add output/ && git commit -m "`date +"%Y-%m-%dT%H:%M:%S%z"`"
git push
