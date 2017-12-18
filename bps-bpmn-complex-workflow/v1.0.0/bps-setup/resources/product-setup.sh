#!/usr/bin/env bash

apt-get update
apt-get install -y unzip 
apt-get install -y wget 
unzip /tmp/wso2ei-6.1.1*.zip -d /wso2

wget -O /wso2/wso2ei-6.1.1/lib/mysql-connector-java-5.1.44.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.44/mysql-connector-java-5.1.44.jar
wget -O /wso2/wso2ei-6.1.1/lib/activation-1.1.jar http://central.maven.org/maven2/javax/activation/activation/1.1/activation-1.1.jar
wget -O /wso2/wso2ei-6.1.1/lib/commons-email-1.3.jar http://central.maven.org/maven2/org/apache/commons/commons-email/1.3/commons-email-1.3.jar
wget -O /wso2/wso2ei-6.1.1/lib/javax.mail-api-1.4.7.jar http://central.maven.org/maven2/javax/mail/javax.mail-api/1.4.7/javax.mail-api-1.4.7.jar

mv -f /tmp/resources/conf/activiti.xml /wso2/wso2ei-6.1.1/wso2/business-process/conf/activiti.xml
mv -f /tmp/resources/conf/user-mgt.xml /wso2/wso2ei-6.1.1/wso2/business-process/conf/user-mgt.xml
mv -f /tmp/resources/conf/master-datasources.xml /wso2/wso2ei-6.1.1/wso2/business-process/conf/datasources/master-datasources.xml
mkdir /wso2/wso2ei-6.1.1/wso2/business-process/repository/deployment/server/bpmn
mv -f /tmp/resources/bpmn/CPPWorkflow.bar /wso2/wso2ei-6.1.1/wso2/business-process/repository/deployment/server/bpmn/CPPWorkflow.bar
mkdir /wso2/wso2ei-6.1.1/patches/patch9000
mv -f /tmp/resources/lib/org.wso2.carbon.bpmn.extensions-4.4.15.jar /wso2/wso2ei-6.1.1/patches/patch9000/org.wso2.carbon.bpmn.extensions-4.4.15.jar