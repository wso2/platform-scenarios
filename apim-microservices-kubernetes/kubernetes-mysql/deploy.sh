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

echo 'deploying mysql server...'

if [ -x "$(command -v minishift)" ]; then
  echo "Creating mysql data folder /tmp/data/pv-mysql in Minishift host..."
  minishift ssh "sudo mkdir -p /tmp/data/pv-mysql"
  echo "Granting write access to group of /tmp/data/pv-mysql..."
  minishift ssh "sudo chmod -R g+rw /tmp/data/pv-mysql"
fi

# config maps
oc create configmap post-init --from-file=post-init/post-init.sh
oc create configmap mysql-scripts --from-file=scripts/
sleep 5s

# volumes
oc create -f resources/volumes/persistent-volumes.yaml

# databases
oc create -f resources/mysql-persistent-volume-claim.yaml
oc create -f resources/mysql-service.yaml
oc create -f resources/mysql-deployment.yaml
