#!/usr/bin/env bash

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

# methods
function echoBold () {
    echo $'\e[1m'"${1}"$'\e[0m'
}

set -e

if [ -x "$(command -v minishift)" ]; then
  data_folder="/tmp/data/pv-wso2ei-bps"
  echo "Creating wso2ei/bps data folder ${data_folder} in Minishift host..."
  minishift ssh "sudo mkdir -p ${data_folder}"
  echo "Granting write access to group of ${data_folder}..."
  minishift ssh "sudo chmod -R g+rw ${data_folder}"
fi

# volumes
oc create -f resources/volumes
sleep 5s

# configuration maps
echoBold 'creating configuration maps...'
oc create configmap wso2ei-bps-conf --from-file=conf/bps/conf/
oc create configmap wso2ei-bps-conf-axis2 --from-file=conf/bps/conf/axis2/
oc create configmap wso2ei-bps-conf-datasources --from-file=conf/bps/conf/datasources/
oc create configmap wso2ei-bps-conf-tomcat --from-file=conf/bps/conf/tomcat/
oc create configmap wso2ei-bps-conf-epr --from-file=conf/bps/conf/epr/
oc create configmap wso2ei-bps-conf-bpmn-explorer --from-file=conf/bps/repository/deployment/server/jaggeryapps/bpmn-explorer/config/
oc create configmap wso2ei-bps-conf-humantask-explorer --from-file=conf/bps/repository/deployment/server/jaggeryapps/humantask-explorer/config/

echoBold 'deploying wso2 ei/bps...'
oc create -f resources/bps
oc create -f resources/routes
