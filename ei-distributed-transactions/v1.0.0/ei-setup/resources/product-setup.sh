#!/usr/bin/env bash

apt-get update
apt-get install -y unzip
apt-get install -y wget
apt-get install -y netcat

unzip /tmp/wso2ei-6.1.1*.zip -d /wso2

wget -O /wso2/wso2ei-6.1.1/lib/mysql-connector-java-5.1.5.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.5/mysql-connector-java-5.1.5.jar

wget -O /wso2/wso2ei-6.1.1/lib/activemq-broker-5.8.0.jar http://central.maven.org/maven2/org/apache/activemq/activemq-broker/5.8.0/activemq-broker-5.8.0.jar
wget -O /wso2/wso2ei-6.1.1/lib/activemq-client-5.8.0.jar http://central.maven.org/maven2/org/apache/activemq/activemq-client/5.8.0/activemq-client-5.8.0.jar 
wget -O /wso2/wso2ei-6.1.1/lib/activemq-kahadb-store-5.8.0.jar http://central.maven.org/maven2/org/apache/activemq/activemq-kahadb-store/5.8.0/activemq-kahadb-store-5.8.0.jar 
wget -O /wso2/wso2ei-6.1.1/lib/geronimo-jms_1.1_spec-1.1.1.jar http://central.maven.org/maven2/org/apache/geronimo/specs/geronimo-jms_1.1_spec/1.1.1/geronimo-jms_1.1_spec-1.1.1.jar 
wget -O /wso2/wso2ei-6.1.1/lib/geronimo-j2ee-management_1.1_spec-1.0.1.jar http://central.maven.org/maven2/org/apache/geronimo/specs/geronimo-j2ee-management_1.1_spec/1.0.1/geronimo-j2ee-management_1.1_spec-1.0.1.jar
wget -O /wso2/wso2ei-6.1.1/lib/geronimo-jta_1.0.1B_spec-1.0.1.jar http://central.maven.org/maven2/org/apache/geronimo/specs/geronimo-jta_1.0.1B_spec/1.0.1/geronimo-jta_1.0.1B_spec-1.0.1.jar
wget -O /wso2/wso2ei-6.1.1/lib/hawtbuf-1.9.jar http://central.maven.org/maven2/org/fusesource/hawtbuf/hawtbuf/1.9/hawtbuf-1.9.jar 
wget -O /wso2/wso2ei-6.1.1/lib/slf4j-api-1.6.6.jar http://central.maven.org/maven2/org/slf4j/slf4j-api/1.6.6/slf4j-api-1.6.6.jar
wget -O /wso2/wso2ei-6.1.1/lib/activeio-core-3.1.4.jar http://central.maven.org/maven2/org/apache/activemq/activeio-core/3.1.4/activeio-core-3.1.4.jar  



mv -f /tmp/resources/conf/master-datasources.xml /wso2/wso2ei-6.1.1/conf/datasources/
mv -f /tmp/resources/conf/axis2.xml /wso2/wso2ei-6.1.1/conf/axis2/
mv -f /tmp/resources/conf/transactions.properties /wso2/wso2ei-6.1.1/wso2/lib/
mv -f /tmp/resources/carbonapps/* /wso2/wso2ei-6.1.1/repository/deployment/server/carbonapps/