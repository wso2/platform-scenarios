FROM airdock/oracle-jdk:1.8

COPY wso2is-km-5.3.0*.zip /tmp
ADD resources /tmp/resources

RUN chmod +x /tmp/resources/product-setup.sh && /tmp/resources/product-setup.sh

CMD ["sh", "/wso2/wso2is-km-5.3.0/bin/wso2server.sh"]