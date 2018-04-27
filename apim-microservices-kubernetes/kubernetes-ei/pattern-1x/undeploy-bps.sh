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

echo 'un-deploying ei/bps...'
oc delete deployments,services,PersistentVolume,PersistentVolumeClaim,Routes -l pattern=wso2ei-pattern-1x -n wso2

echo 'delete configuration maps...'
oc delete configmap wso2ei-bps-conf
oc delete configmap wso2ei-bps-conf-axis2 
oc delete configmap wso2ei-bps-conf-datasources
oc delete configmap wso2ei-bps-conf-tomcat
oc delete configmap wso2ei-bps-conf-epr
oc delete configmap wso2ei-bps-conf-bpmn-explorer
oc delete configmap wso2ei-bps-conf-humantask-explorer
