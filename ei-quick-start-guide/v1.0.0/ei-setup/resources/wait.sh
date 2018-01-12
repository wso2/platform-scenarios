#!/bin/bash

while ! nc -z analytics-service 9444
do
  echo -n "waiting for Analytics node"
  sleep 5
done

echo "Analytics service is up! starting EI service."

sh /wso2/wso2ei-6.1.1/wso2/broker/bin/wso2server.sh start
sh /wso2/wso2ei-6.1.1/wso2/msf4j/bin/carbon.sh start
sh /wso2/wso2ei-6.1.1/bin/integrator.sh