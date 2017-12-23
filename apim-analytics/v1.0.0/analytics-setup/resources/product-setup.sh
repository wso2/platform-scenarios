#!/bin/bash

apt-get update
apt-get install -y unzip 
apt-get install -y wget 
unzip /tmp/wso2am-analytics-2.1.0 -d /wso2

wget -O /wso2/wso2am-analytics-2.1.0/repository/components/lib/mysql-connector-java-5.1.44.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.44/mysql-connector-java-5.1.44.jar

mv -f /tmp/resources/conf/analytics-datasources.xml /wso2/wso2am-analytics-2.1.0/repository/conf/datasources/analytics-datasources.xml
mv -f /tmp/resources/conf/stats-datasources.xml /wso2/wso2am-analytics-2.1.0/repository/conf/datasources/stats-datasources.xml
