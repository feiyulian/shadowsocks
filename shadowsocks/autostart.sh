#!/bin/sh
ps -fe|grep server.py |grep -v grep
if [ $? -ne 0 ]; then
       cd /root/shadowsocks/shadowsocks;
       ulimit -n 60000
       nohup python server.py -c /root/shadowsocks/shadowsocks/config.json > /var/log/shadowsocks.log 2>&1 &
fi
