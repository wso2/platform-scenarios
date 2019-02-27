#!/bin/sh
# ------------------------------------------------------------------------
# Copyright 2018 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License
# ------------------------------------------------------------------------

set -e

# original deployment artifacts
original_deployment_artifacts=${WORKING_DIRECTORY}/wso2-tmp/server

# check if the WSO2 non-root user home exists
test ! -d ${WORKING_DIRECTORY} && echo "WSO2 Docker non-root user home does not exist" && exit 1

# check if the WSO2 product home exists
test ! -d ${WSO2_SERVER_HOME} && echo "WSO2 Docker product home does not exist" && exit 1

# Copy resources/deployment artifacts

   mv -f ${original_deployment_artifacts}/carbonapps/* ${WSO2_SERVER_HOME}/repository/deployment/server/carbonapps/
   mv -f ${original_deployment_artifacts}/dataservices ${WSO2_SERVER_HOME}/repository/deployment/server/dataservices
   mv -f ${original_deployment_artifacts}/database ${WSO2_SERVER_HOME}/samples/data-services/database
   mv -f ${original_deployment_artifacts}/msf4j/* ${WSO2_SERVER_HOME}/wso2/msf4j/deployment/microservices/
   mv -f ${original_deployment_artifacts}/conf/jndi.properties ${WSO2_SERVER_HOME}/conf/
   mv -f ${original_deployment_artifacts}/conf/output-event-adapters.xml ${WSO2_SERVER_HOME}/conf/
   mv -f ${original_deployment_artifacts}/conf/synapse.properties ${WSO2_SERVER_HOME}/conf/
   mv -f ${original_deployment_artifacts}/eventpublishers/* ${WSO2_SERVER_HOME}/repository/deployment/server/eventpublishers/

#Wait for analytics server
while ! nc -z analytics-service 9444
do
  echo -n "waiting for Analytics  node"
  sleep 10
done

echo "Analytics service is up! starting EI service."


# start WSO2 Carbon server (broker,msf4j,ei profiles accordingly)
sh ${WSO2_SERVER_HOME}/wso2/broker/bin/wso2server.sh &
sh ${WSO2_SERVER_HOME}/wso2/msf4j/bin/carbon.sh &
sh ${WSO2_SERVER_HOME}/bin/integrator.sh  &

wait
echo all processes complete