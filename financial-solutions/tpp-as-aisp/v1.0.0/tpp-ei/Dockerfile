FROM demo-base

# set dependant files directory
ARG PACKS=./packs

ARG SERVICE_NAME=tpp-ei

# set wso2 product configurations
ARG WSO2_SERVER=wso2ei
ARG WSO2_SERVER_VERSION=6.1.1
ARG INSTALL_DIRECTORY=/wso2
ARG WSO2_SERVER_PACK=${WSO2_SERVER}-${WSO2_SERVER_VERSION}*.zip
ARG WSO2_SERVER_HOME=${INSTALL_DIRECTORY}/${WSO2_SERVER}-${WSO2_SERVER_VERSION}

# copy wso2 product distribution zip files to /tmp/ directory
COPY ${PACKS}/${WSO2_SERVER_PACK} /tmp/

RUN mkdir -p ${INSTALL_DIRECTORY} && \
    unzip -q /tmp/${WSO2_SERVER_PACK} -d ${INSTALL_DIRECTORY}/ && \
    rm /tmp/${WSO2_SERVER_PACK}

# set environment variables
ENV WSO2_SERVER_HOME=${WSO2_SERVER_HOME}

# Adding configs
ADD ${SERVICE_NAME}/resources /tmp/resources
RUN chmod +x /tmp/resources/product-setup.sh && /tmp/resources/product-setup.sh
RUN rm -rf /tmp/resources

ENTRYPOINT ${WSO2_SERVER_HOME}/bin/integrator.sh
