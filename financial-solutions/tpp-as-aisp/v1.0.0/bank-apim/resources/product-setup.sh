#!/bin/bash

cp -f /tmp/resources/bin/wso2server.sh /wso2/wso2am-2.1.0/bin/wso2server.sh
cp -f /tmp/resources/database/WSO2AM_DB.h2.db /wso2/wso2am-2.1.0/repository/database/WSO2AM_DB.h2.db
cp -f /tmp/resources/database/WSO2CARBON_DB.h2.db /wso2/wso2am-2.1.0/repository/database/WSO2CARBON_DB.h2.db
cp -f /tmp/resources/conf/api-manager.xml /wso2/wso2am-2.1.0/repository/conf/api-manager.xml
cp -f /tmp/resources/conf/carbon.xml /wso2/wso2am-2.1.0/repository/conf/carbon.xml
cp -f /tmp/resources/conf/tomcat/catalina-server.xml /wso2/wso2am-2.1.0/repository/conf/tomcat/catalina-server.xml
cp -f /wso2/client-truststore.jks /wso2/wso2am-2.1.0/repository/resources/security/client-truststore.jks

cp -rf /tmp/resources/webapps/authenticationendpoint.war /wso2/wso2am-2.1.0/repository/deployment/server/webapps/authenticationendpoint.war

cp -f /tmp/resources/apis/admin--AccountAPI_v1.0.0.xml /wso2/wso2am-2.1.0/repository/deployment/server/synapse-configs/default/api/admin--AccountAPI_v1.0.0.xml

cp -f /tmp/resources/open-banking-backend-1.0.0.jar /wso2/open-banking-backend-1.0.0.jar
