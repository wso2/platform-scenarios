#!/bin/bash

cp -f /tmp/resources/bin/integrator.sh /wso2/wso2ei-6.1.1/bin/integrator.sh
cp -f /tmp/resources/conf/carbon.xml /wso2/wso2ei-6.1.1/conf/carbon.xml
cp -f /tmp/resources/conf/tomcat/catalina-server.xml /wso2/wso2ei-6.1.1/conf/tomcat/catalina-server.xml
cp -f /wso2/client-truststore.jks /wso2/wso2ei-6.1.1/repository/resources/security/client-truststore.jks

mkdir -p /wso2/wso2ei-6.1.1/repository/deployment/server/synapse-configs/default/api
mkdir -p /wso2/wso2ei-6.1.1/repository/deployment/server/synapse-configs/default/sequences
mkdir -p /wso2/wso2ei-6.1.1/repository/deployment/server/synapse-configs/default/templates
cp -f /tmp/resources/deployment/apis/AccountAPI.xml /wso2/wso2ei-6.1.1/repository/deployment/server/synapse-configs/default/api/AccountAPI.xml
cp -f /tmp/resources/deployment/sequences/transform_gold_in.xml /wso2/wso2ei-6.1.1/repository/deployment/server/synapse-configs/default/sequences/transform_gold_in.xml
cp -f /tmp/resources/deployment/sequences/transform_gold_out.xml /wso2/wso2ei-6.1.1/repository/deployment/server/synapse-configs/default/sequences/transform_gold_out.xml
cp -f /tmp/resources/deployment/templates/SILVER_BANK_GET_TOKEN.xml /wso2/wso2ei-6.1.1/repository/deployment/server/synapse-configs/default/templates/SILVER_BANK_GET_TOKEN.xml
