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

oc project wso2

echo 'deploying api manager...'

if [ -x "$(command -v minishift)" ]; then
  data_folder="/tmp/data/pv-wso2apim"
  echo "Creating wso2ei/bps data folder ${data_folder} in Minishift host..."
  minishift ssh "sudo mkdir -p ${data_folder}"
  echo "Granting write access to group of ${data_folder}..."
  minishift ssh "sudo chmod -R g+rw ${data_folder}"
fi

echo 'creating volumes...'
oc create -f resources/volumes/persistent-volumes.yaml

echo 'creating config maps...'
oc create configmap apim-analytics-bin --from-file=confs/apim-analytics/bin/
oc create configmap apim-analytics-conf --from-file=confs/apim-analytics/repository/conf/
oc create configmap apim-analytics-conf-analytics-node-id --from-file=confs/apim-analytics/repository/conf/analytics/my-node-id.dat
oc create configmap apim-analytics-axis2 --from-file=confs/apim-analytics/repository/conf/axis2/
oc create configmap apim-analytics-datasources --from-file=confs/apim-analytics/repository/conf/datasources/
oc create configmap apim-analytics-tomcat --from-file=confs/apim-analytics/repository/conf/tomcat/

oc create configmap apim-bin --from-file=confs/apim/bin/
oc create configmap apim-conf --from-file=confs/apim/repository/conf/
oc create configmap apim-identity --from-file=confs/apim/repository/conf/identity/
oc create configmap apim-axis2 --from-file=confs/apim/repository/conf/axis2/
oc create configmap apim-datasources --from-file=confs/apim/repository/conf/datasources/
oc create configmap apim-tomcat --from-file=confs/apim/repository/conf/tomcat/
oc create configmap apim-site-conf --from-file=confs/apim/repository/deployment/server/jaggeryapps/admin/site/conf


echo 'creating services and volume claims...'
oc create -f resources/apim-analytics/wso2apim-analytics-service.yaml
oc create -f resources/apim/wso2apim-service.yaml
oc create -f resources/apim/wso2apim-gw-service.yaml
oc create -f resources/apim/wso2apim-volume-claim.yaml

sleep 10s
echo 'deploying apim analytics...'
oc create -f resources/apim-analytics/wso2apim-analytics-deployment.yaml

echo 'waiting for apim analytics to get started...'
sleep 50s

echo 'deploying apim...'
oc create -f resources/apim/wso2apim-deployment.yaml

echo 'creating apim and apim analytics routes...'
oc create -f resources/routes/wso2apim-route.yaml
oc create -f resources/routes/wso2apim-gw-route.yaml
oc create -f resources/routes/wso2apim-analytics-route.yaml