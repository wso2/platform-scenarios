#!/usr/bin/env bash

apt-get update
apt-get -y install unzip

unzip /tmp/wso2ei-6.1.1.zip -d /wso2

mv -f /wso2/wso2ei-6.1.1/wso2/broker/client-lib/andes-client-* /wso2/wso2ei-6.1.1/lib/
mv -f /wso2/wso2ei-6.1.1/wso2/broker/client-lib/geronimo-jms* /wso2/wso2ei-6.1.1/lib/
mv -f /wso2/wso2ei-6.1.1/wso2/broker/client-lib/org.wso2.securevault-* /wso2/wso2ei-6.1.1/lib/

mv -f /tmp/resources/conf/jndi.properties /wso2/wso2ei-6.1.1/conf/
mv -f /tmp/resources/carbonapps/* /wso2/wso2ei-6.1.1/repository/deployment/server/carbonapps/

mv -f /tmp/resources/conf/synapse.properties /wso2/wso2ei-6.1.1/conf/



