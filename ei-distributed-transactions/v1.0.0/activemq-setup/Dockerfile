FROM expertsystems/oracle-jdk8:u74

RUN cd /opt && \
  curl -LO http://archive.apache.org/dist/activemq/apache-activemq/5.8.0/apache-activemq-5.8.0-bin.tar.gz && \
  tar xzf apache-activemq-5.8.0-bin.tar.gz && \
  rm apache-activemq-5.8.0-bin.tar.gz

ENTRYPOINT ["/opt/apache-activemq-5.8.0/bin/activemq"]
CMD ["console"]