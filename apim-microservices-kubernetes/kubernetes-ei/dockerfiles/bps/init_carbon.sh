#!/bin/bash

# ------------------------------------------------------------------------
# Copyright 2017 WSO2, Inc. (http://wso2.com)
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
CARBON_HOME=${HOME}/${WSO2_SERVER}-${WSO2_SERVER_VERSION}
SERVER_ARTIFACT_LOCATION=${CARBON_HOME}/wso2/business-process/repository/deployment/server

echo "carbon home: ${CARBON_HOME}"
echo "server artifact location: ${SERVER_ARTIFACT_LOCATION}"

# Copy the backed up artifacts from ${HOME}/tmp/server/. Copying the initial artifacts to ${HOME}/tmp/server/ is done in the 
# Dockerfile. This is to preserve the initial artifacts in a volume mount (the mounted directory can be empty initially). 
# The artifacts will be copied to the CARBON_HOME/wso2/business-process/repository/deployment/server location before the server is started.
if [[ -d ${HOME}/tmp/server/ ]]; then
   if [[ ! "$(ls -A ${SERVER_ARTIFACT_LOCATION}/)" ]]; then
      # There are no artifacts under CARBON_HOME/wso2/business-process/repository/deployment/server/; copy them.
      echo "copying artifacts from ${HOME}/tmp/server/ to ${SERVER_ARTIFACT_LOCATION}/ .."
      cp -vrf ${HOME}/tmp/server/* ${SERVER_ARTIFACT_LOCATION}/
   fi
   rm -rf ${HOME}/tmp/server/
fi

# Copy customizations done by user do the CARBON_HOME location. 
if [[ -d ${HOME}/tmp/carbon/ ]]; then
   echo "copying custom configurations and artifacts from ${HOME}/tmp/carbon/ to ${CARBON_HOME}/ .."
   cp -vrf ${HOME}/tmp/carbon/* ${CARBON_HOME}/
   rm -rf ${HOME}/tmp/carbon/
fi

# Copy configurations
if [ -e ${CARBON_HOME}-conf/bps/conf ]; then
   cp -v ${CARBON_HOME}-conf/bps/conf/* ${CARBON_HOME}/wso2/business-process/conf/
fi

if [ -e ${CARBON_HOME}-conf/bps/conf-axis2 ]; then 
   cp -v ${CARBON_HOME}-conf/bps/conf-axis2/* ${CARBON_HOME}/wso2/business-process/conf/axis2/
fi

if [ -e ${CARBON_HOME}-conf/bps/conf-datasources ]; then 
   cp -v ${CARBON_HOME}-conf/bps/conf-datasources/* ${CARBON_HOME}/wso2/business-process/conf/datasources/
fi

if [ -e ${CARBON_HOME}-conf/bps/conf-tomcat ]; then 
   cp -v ${CARBON_HOME}-conf/bps/conf-tomcat/* ${CARBON_HOME}/wso2/business-process/conf/tomcat/
fi

if [ -e ${CARBON_HOME}-conf/bps/conf-epr ]; then
   # workflow process and human task look for the epr files in ${CARBON_HOME}/wso2/business-process/repository/conf/epr
   cp -v ${CARBON_HOME}-conf/bps/conf-epr/* ${CARBON_HOME}/wso2/business-process/repository/conf/epr/
fi

if [ -e ${CARBON_HOME}-conf/bps/conf-bpmn-explorer ]; then
   cp -v ${CARBON_HOME}-conf/bps/conf-bpmn-explorer/* ${CARBON_HOME}/wso2/business-process/repository/deployment/server/jaggeryapps/bpmn-explorer/config/
fi

if [ -e ${CARBON_HOME}-conf/bps/conf-humantask-explorer ]; then
   cp -v ${CARBON_HOME}-conf/bps/conf-humantask-explorer/* ${CARBON_HOME}/wso2/business-process/repository/deployment/server/jaggeryapps/humantask-explorer/config/
fi

# overwrite localMemberHost element value in axis2.xml with container ip
export local_docker_ip=$(ip route get 1 | awk '{print $NF;exit}')
axi2_xml_location=${CARBON_HOME}/wso2/business-process/conf/axis2/axis2.xml
if [[ ! -z ${local_docker_ip} ]]; then
   sed -i "s#<parameter\ name=\"localMemberHost\".*#<parameter\ name=\"localMemberHost\">${local_docker_ip}<\/parameter>#" "${axi2_xml_location}"
   if [[ $? == 0 ]]; then
      echo "Successfully updated localMemberHost with ${local_docker_ip}"
   else
      echo "Error occurred while updating localMemberHost with ${local_docker_ip}"
   fi
fi

# Start the bps server.
${CARBON_HOME}/bin/business-process.sh
