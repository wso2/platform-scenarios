#!/bin/sh

nohup bash ./kafka/bin/zookeeper-server-start.sh ./kafka/config/zookeeper.properties >/dev/null 2>&1 &
sleep 5
nohup bash ./kafka/bin/kafka-server-start.sh ./kafka/config/server.properties >/dev/null 2>&1 &
nohup ./prometheus > /dev/null 2>&1 &
nohup ./bin/grafana-server > /dev/null 2>&1 &
sh ./wso2si/bin/server.sh
