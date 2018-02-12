#!/bin/bash

cp -f /tmp/resources/bin/wso2server.sh /wso2/wso2is-km-5.3.0/bin/wso2server.sh
cp -f /tmp/resources/database/WSO2CARBON_DB.h2.db /wso2/wso2is-km-5.3.0/repository/database/WSO2CARBON_DB.h2.db
cp -f /tmp/resources/security/client-truststore.jks /wso2/wso2is-km-5.3.0/repository/resources/security/client-truststore.jks

cp -rf /tmp/resources/conf/* /wso2/wso2is-km-5.3.0/repository/conf/

wget -O /wso2/wso2is-km-5.3.0/repository/components/lib/mysql-connector-java-5.1.44.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.44/mysql-connector-java-5.1.44.jar
