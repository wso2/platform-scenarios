#!/bin/bash

cp -f /tmp/resources/bin/wso2server.sh /wso2/wso2am-2.1.0/bin/wso2server.sh
cp -f /tmp/resources/database/WSO2AM_DB.h2.db /wso2/wso2am-2.1.0/repository/database/WSO2AM_DB.h2.db
cp -f /tmp/resources/database/WSO2CARBON_DB.h2.db /wso2/wso2am-2.1.0/repository/database/WSO2CARBON_DB.h2.db
cp -f /tmp/resources/conf/api-manager.xml /wso2/wso2am-2.1.0/repository/conf/api-manager.xml
cp -f /tmp/resources/conf/carbon.xml /wso2/wso2am-2.1.0/repository/conf/carbon.xml
cp -f /tmp/resources/conf/tomcat/catalina-server.xml /wso2/wso2am-2.1.0/repository/conf/tomcat/catalina-server.xml
