#!/bin/bash

while ! nc -z analytics-service 9444
do
  echo -n "waiting for Analytics node"
  sleep 2
done

while ! nc -z mb-service 5675
do
  echo -n "waiting for MB node"
  sleep 2
done

sh /wso2/wso2ei-6.1.1/bin/integrator.sh
