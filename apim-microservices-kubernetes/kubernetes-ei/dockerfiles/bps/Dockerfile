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

FROM ubuntu:16.04
MAINTAINER WSO2 Docker Maintainers "dev@wso2.org"
ENV DEBIAN_FRONTEND noninteractive

# defined arguments and defaults
ARG USER=wso2user
ARG USER_ID=1000000000
# files
ARG FILES=./files
ARG USER_HOME=/home/wso2user
ARG WSO2_SERVER=wso2ei
ARG WSO2_SERVER_VERSION=6.1.1
ARG WSO2_SERVER_PACK=${WSO2_SERVER}-${WSO2_SERVER_VERSION}.zip
ARG JDK_ARCHIVE=jdk-8u*-linux-x64.tar.gz
ARG JAVA_HOME=${USER_HOME}/java
ARG STARTUP_SCRIPT=init_carbon.sh
ARG JDBC_DRIVER=mysql-connector-java-5*-bin.jar
ARG CLIENT_TRUSTSTORE=client-truststore.jks
ARG WSO2CARBON_JKS=wso2carbon.jks
ARG SUBSCRIPTION_WORKFLOW=SubscriptionApprovalWorkFlowProcess_1.0.0.zip
ARG SUBSCRIPTION_HUMAN_TASK=SubscriptionsApprovalTask-1.0.0.zip

RUN apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
       	   zip \
           unzip \
           telnet \
           iproute2 \
           mysql-client \
	   sudo && rm -rf /var/lib/apt/lists/*

# creates the user
RUN useradd --system --uid ${USER_ID} --gid 0 --create-home --home-dir ${USER_HOME} \
	--no-log-init ${USER}

# copy the jdk and product packs
COPY ${FILES}/${WSO2_SERVER_PACK} ${STARTUP_SCRIPT} ${FILES}/${JDK_ARCHIVE} ${FILES}/${JDBC_DRIVER} \
     ${FILES}/${CLIENT_TRUSTSTORE} ${FILES}/${WSO2CARBON_JKS} ${FILES}/${SUBSCRIPTION_WORKFLOW} \
     ${FILES}/${SUBSCRIPTION_HUMAN_TASK} ${USER_HOME}/

# and creates the init script
RUN unzip -q ${USER_HOME}/${WSO2_SERVER_PACK} -d ${USER_HOME}/ \
        && mkdir -p ${JAVA_HOME} \
        && tar -xf ${USER_HOME}/${JDK_ARCHIVE} -C ${JAVA_HOME} --strip-components=1 \
        && mkdir -p ${USER_HOME}/tmp \
        && cp ${USER_HOME}/${JDBC_DRIVER} \
            ${USER_HOME}/${WSO2_SERVER}-${WSO2_SERVER_VERSION}/lib/ \
        && cp ${USER_HOME}/${CLIENT_TRUSTSTORE} \
                    ${USER_HOME}/${WSO2_SERVER}-${WSO2_SERVER_VERSION}/wso2/business-process/repository/resources/security/ \
        && cp ${USER_HOME}/${WSO2CARBON_JKS} \
            ${USER_HOME}/${WSO2_SERVER}-${WSO2_SERVER_VERSION}/wso2/business-process/repository/resources/security/ \
        && cp -r ${USER_HOME}/${WSO2_SERVER}-${WSO2_SERVER_VERSION}/wso2/business-process/repository/deployment/server ${USER_HOME}/tmp/ \
        && mkdir -p ${USER_HOME}/tmp/server/bpel/ \
        && mv ${USER_HOME}/${SUBSCRIPTION_WORKFLOW} ${USER_HOME}/tmp/server/bpel/ \
        && mkdir -p ${USER_HOME}/tmp/server/humantasks/ \
        && mv ${USER_HOME}/${SUBSCRIPTION_HUMAN_TASK} ${USER_HOME}/tmp/server/humantasks/ \
        && mkdir -p ${USER_HOME}/${WSO2_SERVER}-${WSO2_SERVER_VERSION}/wso2/business-process/repository/conf/epr/ \
        && rm ${USER_HOME}/${WSO2_SERVER_PACK} \
        && rm ${USER_HOME}/${JDK_ARCHIVE} \
        && rm ${USER_HOME}/${JDBC_DRIVER} \
        && rm ${USER_HOME}/${CLIENT_TRUSTSTORE} \
        && rm ${USER_HOME}/${WSO2CARBON_JKS} \
	    && mkdir -p ${USER_HOME}/scripts/ \
	    && cat ${USER_HOME}/${STARTUP_SCRIPT} > ${USER_HOME}/scripts/${STARTUP_SCRIPT} \
	    && rm ${USER_HOME}/${STARTUP_SCRIPT} \
	    && chown -R ${USER_ID} ${USER_HOME} \
	    && chmod -R 0774 ${USER_HOME} \
	    && chgrp -R 0 ${USER_HOME} \
        && chmod -R g=u ${USER_HOME}

# set the user, work directory and home
USER ${USER_ID}
WORKDIR ${USER_HOME}

# set java home and path variables
ENV HOME=${USER_HOME} JAVA_HOME=${JAVA_HOME} PATH=$JAVA_HOME/bin:$PATH USER_HOME=${USER_HOME} \
        WSO2_SERVER=${WSO2_SERVER} WSO2_SERVER_VERSION=${WSO2_SERVER_VERSION} USER=${USER}

# expose ports
EXPOSE 8280 8243 9763 9443

ENTRYPOINT exec ${USER_HOME}/scripts/init_carbon.sh
