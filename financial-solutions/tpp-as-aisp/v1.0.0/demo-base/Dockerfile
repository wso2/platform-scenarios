FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

# set jdk configurations
ARG JDK_ARCHIVE=jdk-8u*-linux-x64.tar.gz
ARG JAVA_HOME=/opt/java

# install required packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests \
    unzip \
    wget \
    vim \
    iproute2 &&\
    rm -rf /var/lib/apt/lists/*

RUN wget -qc -O /tmp/jdk-8u162-linux-x64.tar.gz --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" \
      http://download.oracle.com/otn-pub/java/jdk/8u162-b12/0da788060d494f5095bf8624735fa2f1/jdk-8u162-linux-x64.tar.gz

# install the jdk
RUN mkdir -p ${JAVA_HOME} && \
    tar -xf /tmp/${JDK_ARCHIVE} -C ${JAVA_HOME} --strip-components=1 && \
    rm /tmp/${JDK_ARCHIVE}

# set environment variables
ENV JAVA_HOME=${JAVA_HOME} \
    PATH=$JAVA_HOME/bin:$PATH

ADD demo-base/resources /tmp/resources

ARG INSTALL_DIRECTORY=/wso2
RUN mkdir -p ${INSTALL_DIRECTORY} && \
    cp /tmp/resources/add-hosts.sh ${INSTALL_DIRECTORY}/ && \
    chmod a+x ${INSTALL_DIRECTORY}/add-hosts.sh && \
    cp /tmp/resources/mysql-wait.sh ${INSTALL_DIRECTORY}/ && \
    chmod a+x ${INSTALL_DIRECTORY}/mysql-wait.sh && \
    cp /tmp/resources/client-truststore.jks ${INSTALL_DIRECTORY}/ && \
    rm -rf /tmp/resources

ENV INSTALL_DIRECTORY=${INSTALL_DIRECTORY}
