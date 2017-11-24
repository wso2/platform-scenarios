#!/usr/bin/env bash

apt-get update
apt-get install unzip 
unzip /tmp/wso2is-km-5.3.0.zip -d /wso2

mv /tmp/resources/lib/mysql-connector-java-5.1.44-bin.jar /wso2/wso2is-km-5.3.0/repository/components/lib/
mv -f /tmp/resources/conf/api-manager.xml /wso2/wso2is-km-5.3.0/repository/conf/api-manager.xml
mv -f /tmp/resources/conf/user-mgt.xml /wso2/wso2is-km-5.3.0/repository/conf/user-mgt.xml
mv -f /tmp/resources/conf/registry.xml /wso2/wso2is-km-5.3.0/repository/conf/registry.xml
mv -f /tmp/resources/conf/carbon.xml /wso2/wso2is-km-5.3.0/repository/conf/carbon.xml
mv -f /tmp/resources/conf/master-datasources.xml /wso2/wso2is-km-5.3.0/repository/conf/datasources/master-datasources.xml