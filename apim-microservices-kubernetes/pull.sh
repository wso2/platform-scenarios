#!/bin/bash
set -e

echo "Pulling customers service docker image..."
docker pull imesh/wso2-microservices-poc-customers-service:0.3

echo "Pulling credits service docker image..."
docker pull imesh/wso2-microservices-poc-credits-service:0.3

echo "Pulling loans service docker image..."
docker pull imesh/wso2-microservices-poc-loans-service:0.3

echo "Pulling loan applications service docker image..."
docker pull imesh/wso2-microservices-poc-loan-applications-service:0.3

echo "Pulling wso2apim docker image..."
docker pull imesh/wso2-microservices-poc-wso2apim:2.1.0-v2

echo "Pulling wso2apim analytics service docker image..."
docker pull imesh/wso2-microservices-poc-wso2apim-analytics:2.1.0-v2

echo "Pulling mysql docker image..."
docker pull imesh/wso2-microservices-poc-wso2ei-bps:6.1.1-v2
