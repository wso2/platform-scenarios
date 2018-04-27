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

# configuration maps
echoBold 'creating integrator configuration maps...'
oc create configmap wso2ei-integrator-synapse-conf-api --from-file=conf/integrator/repository/deployment/server/synapse-configs/default/api/
oc create configmap wso2ei-integrator-synapse-conf-endpoints --from-file=conf/integrator/repository/deployment/server/synapse-configs/default/endpoints/
oc create configmap wso2ei-integrator-synapse-conf-sequences --from-file=conf/integrator/repository/deployment/server/synapse-configs/default/sequences/

echoBold 'deploying wso2 ei/integrator...'
oc apply -f resources/integrator
oc apply -f resources/routes