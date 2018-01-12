#!/usr/bin/env bash

apt-get update
apt-get install -y unzip
apt-get install -y netcat

unzip /tmp/wso2ei-6.1.1.zip -d /wso2

mv -f /wso2/wso2ei-6.1.1/wso2/broker/client-lib/andes-client-* /wso2/wso2ei-6.1.1/lib/
mv -f /wso2/wso2ei-6.1.1/wso2/broker/client-lib/geronimo-jms* /wso2/wso2ei-6.1.1/lib/
mv -f /wso2/wso2ei-6.1.1/wso2/broker/client-lib/org.wso2.securevault-* /wso2/wso2ei-6.1.1/lib/

mv -f /tmp/resources/conf/jndi.properties /wso2/wso2ei-6.1.1/conf/
mv -f /tmp/resources/conf/output-event-adapters.xml /wso2/wso2ei-6.1.1/conf/
mv -f /tmp/resources/carbonapps/* /wso2/wso2ei-6.1.1/repository/deployment/server/carbonapps/
mv -f /tmp/resources/repository/deployment/server/eventpublishers/* /wso2/wso2ei-6.1.1/repository/deployment/server/eventpublishers/

mv -f /tmp/resources/conf/synapse.properties /wso2/wso2ei-6.1.1/conf/

#while ! nc -w 1 https://analytics-service 9444 2>/dev/null
#do
#  echo -n "waiting for Analytics node"
#  sleep 2
#done

#while ! nc -w 1 https://mb-service 5675 2>/dev/null
#do
#  echo -n "waiting for MB node"
#  sleep 2
#done
