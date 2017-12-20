#!/bin/bash

apt-get update
apt-get install -y unzip 
apt-get install -y wget
unzip /tmp/wso2bps-3.6.0*.zip -d /wso2
unzip /tmp/wso2am-2.1.0*.zip -d /wso2

mv -f /tmp/resources/bps/conf/carbon.xml /wso2/wso2bps-3.6.0/repository/conf/carbon.xml
mv -f /tmp/resources/bps/conf/humantask.xml /wso2/wso2bps-3.6.0/repository/conf/humantask.xml
mv -f /tmp/resources/bps/conf/b4p-coordination-config.xml /wso2/wso2bps-3.6.0/repository/conf/b4p-coordination-config.xml
mv -f /wso2/wso2am-2.1.0/business-processes/epr /wso2/wso2bps-3.6.0/repository/conf/epr
mkdir /wso2/wso2bps-3.6.0/repository/deployment/server/bpel
mv -f /wso2/wso2am-2.1.0/business-processes/application-creation/BPEL/* /wso2/wso2bps-3.6.0/repository/deployment/server/bpel/
mv -f /wso2/wso2am-2.1.0/business-processes/subscription-creation/BPEL/* /wso2/wso2bps-3.6.0/repository/deployment/server/bpel/
mkdir /wso2/wso2bps-3.6.0/repository/deployment/server/humantasks
mv -f /wso2/wso2am-2.1.0/business-processes/application-creation/HumanTask/* /wso2/wso2bps-3.6.0/repository/deployment/server/humantasks/
mv -f /wso2/wso2am-2.1.0/business-processes/subscription-creation/HumanTask/* /wso2/wso2bps-3.6.0/repository/deployment/server/humantasks/

wget -O /wso2/wso2am-2.1.0/repository/components/lib/mysql-connector-java-5.1.44.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.44/mysql-connector-java-5.1.44.jar

mv -f /tmp/resources/apim/conf/master-datasources.xml /wso2/wso2am-2.1.0/repository/conf/datasources/master-datasources.xml
mv -f /tmp/resources/apim/conf/registry.xml /wso2/wso2am-2.1.0/repository/conf/registry.xml
mv -f /tmp/resources/apim/conf/site.json /wso2/wso2am-2.1.0/repository/deployment/server/jaggeryapps/admin/site/conf/site.json

mv -f /tmp/resources/start-service.sh /wso2/start-service.sh