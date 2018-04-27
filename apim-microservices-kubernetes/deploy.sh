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

pushd kubernetes-mysql/
./deploy.sh
popd
echo 'waiting mysql server to get started...'
sleep 30s

pushd kubernetes-microservices/
./deploy.sh
popd

pushd kubernetes-ei/pattern-1x/
./deploy.sh
popd

pushd kubernetes-apim/pattern-1x/
./deploy.sh
popd
echo 'DONE!'
