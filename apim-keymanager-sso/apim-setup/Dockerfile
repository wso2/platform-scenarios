FROM airdock/oracle-jdk:1.8

COPY wso2am-2.1.0.zip /tmp
COPY product-setup.sh /tmp

RUN chmod +x /tmp/product-setup.sh && /tmp/product-setup.sh

CMD ["sh", "/wso2/wso2am-2.1.0/bin/wso2server.sh"]