#!/bin/bash
cd `dirname $0`
eval $(ps -ef | grep "server\\.py" | awk '{print "kill "$2}')
ulimit -n 60000
nohup python /root/shadowsocks/shadowsocks/server.py -c /root/shadowsocks/shadowsocks/config.json > /var/log/shadowsocks.log 2>&1 &
