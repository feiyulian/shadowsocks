#!/bin/bash
eval $(ps -ef | grep "server\\.py" | awk '{print "kill "$2}')
echo "stop success!";
