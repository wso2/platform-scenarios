#!/bin/bash

cp -f /tmp/resources/bin/wso2server.sh /wso2/wso2is-km-5.3.0/bin/wso2server.sh
cp -f /wso2/client-truststore.jks /wso2/wso2is-km-5.3.0/repository/resources/security/client-truststore.jks

cp -rf /tmp/resources/conf/* /wso2/wso2is-km-5.3.0/repository/conf/

wget -qc -O /wso2/wso2is-km-5.3.0/repository/components/lib/mysql-connector-java-5.1.44.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.44/mysql-connector-java-5.1.44.jar
