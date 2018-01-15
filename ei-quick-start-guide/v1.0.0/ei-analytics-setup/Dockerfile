FROM airdock/oracle-jdk:1.8

COPY wso2ei-6.1.1*.zip /tmp
ADD resources /tmp/resources

RUN chmod +x /tmp/resources/product-setup.sh && /tmp/resources/product-setup.sh

CMD ["sh", "/wso2/wso2ei-6.1.1/wso2/analytics/bin/wso2server.sh"]
