# ------------------------------------------------------------------------
#
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
#
# ------------------------------------------------------------------------

FROM openjdk:8
MAINTAINER WSO2 Docker Maintainers "dev@wso2.org"
ENV DEBIAN_FRONTEND noninteractive

ARG USER=wso2user
ARG USER_ID=1000000000
ARG BAL_HOME=/ballerina/
RUN mkdir ${BAL_HOME}

COPY files/ballerina-0.93.zip ${BAL_HOME}
COPY loanApplicationsService.balx ${BAL_HOME}

WORKDIR ${BAL_HOME}

RUN unzip ballerina-0.93.zip \
    && useradd --system --uid ${USER_ID} --gid 0 --no-log-init ${USER} \
    && chown -R ${USER} ${BAL_HOME} \
    && chmod -R 0774 ${BAL_HOME} \
    && chgrp -R 0 ${BAL_HOME} \
    && chmod -R g=u ${BAL_HOME} \
    && rm ballerina-0.93.zip

USER ${USER_ID}

CMD ballerina-0.93/bin/ballerina run loanApplicationsService.balx
