#!/bin/bash

sh /wso2/wso2is-km-5.3.0/bin/wso2server.sh start
sh /wso2/wso2am-2.1.0/bin/wso2server.sh start

while ! test -f "/wso2/wso2am-2.1.0/repository/logs/wso2carbon.log"; do
  sleep 10
  echo "Waiting for logs.."
done

tail -f /wso2/wso2is-km-5.3.0/repository/logs/wso2carbon.log /wso2/wso2am-2.1.0/repository/logs/wso2carbon.log