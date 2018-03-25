FROM tomcat:alpine

# install required packages
RUN apk update && \
    apk add \
    wget \
    vim \
    iproute2

# Adding webapp
ADD tpp-webapp/resources /tmp/resources
RUN rm -rf /usr/local/tomcat/webapps/ROOT && \
    cp /tmp/resources/ROOT.war /usr/local/tomcat/webapps/ROOT.war && \
    cp /tmp/resources/AISPBackend.war /usr/local/tomcat/webapps/AISPBackend.war

RUN cp /tmp/resources/start-tomcat.sh /usr/local/tomcat/bin/start-tomcat.sh && \
    chmod a+x /usr/local/tomcat/bin/start-tomcat.sh && \
    rm -rf /tmp/resources

ENTRYPOINT /usr/local/tomcat/bin/start-tomcat.sh
