#!/bin/bash

apt-get update
apt-get install -y unzip 
apt-get install -y wget
unzip /tmp/wso2is-km-5.3.0*.zip -d /wso2

wget -O /wso2/wso2is-km-5.3.0/repository/components/lib/mysql-connector-java-5.1.44.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.44/mysql-connector-java-5.1.44.jar

mv -f /tmp/resources/conf/api-manager.xml /wso2/wso2is-km-5.3.0/repository/conf/api-manager.xml
mv -f /tmp/resources/conf/user-mgt.xml /wso2/wso2is-km-5.3.0/repository/conf/user-mgt.xml
mv -f /tmp/resources/conf/registry.xml /wso2/wso2is-km-5.3.0/repository/conf/registry.xml
mv -f /tmp/resources/conf/carbon.xml /wso2/wso2is-km-5.3.0/repository/conf/carbon.xml
mv -f /tmp/resources/conf/master-datasources.xml /wso2/wso2is-km-5.3.0/repository/conf/datasources/master-datasources.xml