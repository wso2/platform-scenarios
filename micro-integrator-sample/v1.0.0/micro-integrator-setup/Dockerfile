# ---------------------------------------------------------------------------
#  Copyright (c) 2019, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
#
#  WSO2 Inc. licenses this file to you under the Apache License,
#  Version 2.0 (the "License"); you may not use this file except
#  in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing,
#  software distributed under the License is distributed on an
#  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#  KIND, either express or implied. See the License for the
#  specific language governing permissions and limitations
#  under the License.
# ---------------------------------------------------------------------------

# Base image
FROM adoptopenjdk/openjdk8:jdk8u192-b12-alpine
MAINTAINER WSO2 Docker Maintainers "dev@wso2.org"

RUN  apk add --update --no-cache unzip\
     curl \ 
     netcat-openbsd && \
     rm -rf /var/cache/apk/*

# MI details
ARG MICROESB_NAME=wso2ei
ARG MICROESB_VERSION=6.4.0
ARG MICROESB_PROFILE=micro-integrator
ARG MICROESB_DISTRIBUTION=${MICROESB_NAME}-${MICROESB_VERSION}_${MICROESB_PROFILE}.zip

COPY ${MICROESB_DISTRIBUTION} /tmp
COPY resources /tmp/resources
RUN unzip /tmp/${MICROESB_DISTRIBUTION} -d /wso2
RUN mv -f /tmp/resources/carbonapps/* /wso2/wso2ei-${MICROESB_VERSION}/wso2/micro-integrator/repository/deployment/server/carbonapps/

# Expose micro esb ports
EXPOSE 8290 8253

# Execute micro esb startup script
CMD ["sh", "/wso2/wso2ei-6.4.0/bin/micro-integrator.sh"]
