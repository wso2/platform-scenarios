FROM airdock/oracle-jdk:1.8

COPY wso2ei-6.1.1.zip /tmp
ADD resources /tmp/resources

RUN chmod +x /tmp/resources/product-setup.sh && /tmp/resources/product-setup.sh
RUN chmod +x /tmp/resources/wait.sh


#CMD ["sh", "/wso2/wso2ei-6.1.1/bin/integrator.sh"]
CMD ["sh", "/tmp/resources/wait.sh"]
