#!/bin/bash
# wait.sh

set -e

while ! nc -z analytics-svc 9444
do 
  echo -n "Wait for port 9444 to open"
  sleep 2
done

echo "analytics-svc is up - executing command"

sh /wso2/wso2am-2.1.0/bin/wso2server.sh
