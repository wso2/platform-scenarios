#!/usr/bin/env bash

apt-get update
apt-get install unzip 
unzip /tmp/wso2am-2.1.0.zip -d /wso2

mv /tmp/resources/lib/mysql-connector-java-5.1.44-bin.jar /wso2/wso2am-2.1.0/repository/components/lib/
mv -f /tmp/resources/conf/api-manager.xml /wso2/wso2am-2.1.0/repository/conf/api-manager.xml
mv -f /tmp/resources/conf/user-mgt.xml /wso2/wso2am-2.1.0/repository/conf/user-mgt.xml
mv -f /tmp/resources/conf/registry.xml /wso2/wso2am-2.1.0/repository/conf/registry.xml
mv -f /tmp/resources/conf/authenticators.xml /wso2/wso2am-2.1.0/repository/conf/security/authenticators.xml
mv -f /tmp/resources/conf/master-datasources.xml /wso2/wso2am-2.1.0/repository/conf/datasources/master-datasources.xml
mv -f /tmp/resources/conf/pub-site.json /wso2/wso2am-2.1.0/repository/deployment/server/jaggeryapps/publisher/site/conf/site.json
mv -f /tmp/resources/conf/store-site.json /wso2/wso2am-2.1.0/repository/deployment/server/jaggeryapps/store/site/conf/site.json
mv /tmp/resources/api/* /wso2/wso2am-2.1.0/repository/deployment/server/synapse-configs/default/api/