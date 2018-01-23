#!/bin/bash

apt-get update
apt-get install -y unzip 
apt-get install -y wget 

# Setup is-km
unzip /tmp/wso2is-km-5.3.0*.zip -d /wso2

wget -O /wso2/wso2is-km-5.3.0/repository/components/lib/mysql-connector-java-5.1.44.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.44/mysql-connector-java-5.1.44.jar

mv -f /tmp/resources/conf/identity/api-manager.xml /wso2/wso2is-km-5.3.0/repository/conf/api-manager.xml
mv -f /tmp/resources/conf/identity/user-mgt.xml /wso2/wso2is-km-5.3.0/repository/conf/user-mgt.xml
mv -f /tmp/resources/conf/identity/registry.xml /wso2/wso2is-km-5.3.0/repository/conf/registry.xml
mv -f /tmp/resources/conf/identity/carbon.xml /wso2/wso2is-km-5.3.0/repository/conf/carbon.xml
mv -f /tmp/resources/conf/identity/master-datasources.xml /wso2/wso2is-km-5.3.0/repository/conf/datasources/master-datasources.xml

# Setup apim
unzip /tmp/wso2am-2.1.0*.zip -d /wso2

wget -O /wso2/wso2am-2.1.0/repository/components/lib/mysql-connector-java-5.1.44.jar http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.44/mysql-connector-java-5.1.44.jar

mv -f /tmp/resources/conf/apim/api-manager.xml /wso2/wso2am-2.1.0/repository/conf/api-manager.xml
mv -f /tmp/resources/conf/apim/user-mgt.xml /wso2/wso2am-2.1.0/repository/conf/user-mgt.xml
mv -f /tmp/resources/conf/apim/registry.xml /wso2/wso2am-2.1.0/repository/conf/registry.xml
mv -f /tmp/resources/conf/apim/carbon.xml /wso2/wso2am-2.1.0/repository/conf/carbon.xml
mv -f /tmp/resources/conf/apim/authenticators.xml /wso2/wso2am-2.1.0/repository/conf/security/authenticators.xml
mv -f /tmp/resources/conf/apim/master-datasources.xml /wso2/wso2am-2.1.0/repository/conf/datasources/master-datasources.xml
mv -f /tmp/resources/conf/apim/pub-site.json /wso2/wso2am-2.1.0/repository/deployment/server/jaggeryapps/publisher/site/conf/site.json
mv -f /tmp/resources/conf/apim/store-site.json /wso2/wso2am-2.1.0/repository/deployment/server/jaggeryapps/store/site/conf/site.json
mv /tmp/resources/api/* /wso2/wso2am-2.1.0/repository/deployment/server/synapse-configs/default/api/