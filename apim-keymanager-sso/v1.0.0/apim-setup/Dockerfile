FROM airdock/oracle-jdk:1.8

COPY wso2am-2.1.0.zip /tmp
ADD resources /tmp/resources

RUN chmod +x /tmp/resources/product-setup.sh && /tmp/resources/product-setup.sh

CMD ["sh", "/wso2/wso2am-2.1.0/bin/wso2server.sh"]