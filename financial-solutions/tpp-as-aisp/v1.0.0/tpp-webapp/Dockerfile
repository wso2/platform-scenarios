FROM tomcat:alpine

# install required packages
RUN apk update && \
    apk add \
    wget \
    vim \
    iproute2

# Adding webapp
ADD tpp-webapp/resources /tmp/resources

RUN cp /tmp/resources/playground2.war /usr/local/tomcat/webapps/playground2.war

RUN cp /tmp/resources/start-tomcat.sh /usr/local/tomcat/bin/start-tomcat.sh && \
    chmod a+x /usr/local/tomcat/bin/start-tomcat.sh && \
    rm -rf /tmp/resources

ENTRYPOINT /usr/local/tomcat/bin/start-tomcat.sh
