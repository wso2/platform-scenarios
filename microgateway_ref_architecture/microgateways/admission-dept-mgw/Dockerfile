# Auto Generated Dockerfile

FROM ballerina/ballerina:0.981.1
LABEL maintainer="dev@ballerina.io"

COPY admissionSvcProject.balx /home/ballerina

COPY micro-gw.conf /home/ballerina/conf/micro-gw.conf
CMD ballerina run admissionSvcProject.balx --config /home/ballerina/conf/micro-gw.conf
