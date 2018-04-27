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

echo 'un-deploying api manager...'
oc delete deployments,services,PersistentVolume,PersistentVolumeClaim,Routes -l pattern=wso2apim-pattern-1x -n wso2

oc delete configmaps apim-analytics-bin
oc delete configmaps apim-analytics-conf
oc delete configmaps apim-analytics-conf-analytics-node-id
oc delete configmaps apim-analytics-axis2
oc delete configmaps apim-analytics-datasources
oc delete configmaps apim-analytics-tomcat

oc delete configmaps apim-bin
oc delete configmaps apim-conf
oc delete configmaps apim-identity
oc delete configmaps apim-axis2
oc delete configmaps apim-datasources
oc delete configmaps apim-tomcat
oc delete configmaps apim-site-conf