#!/bin/bash
set -e

echo "Saving customers service docker image..."
docker save imesh/wso2-microservices-poc-customers-service:0.3 > docker/images/customers-service-0.3.tar

echo "Saving credits service docker image..."
docker save imesh/wso2-microservices-poc-credits-service:0.3 > docker/images/credits-service-0.3.tar

echo "Saving loans service docker image..."
docker save imesh/wso2-microservices-poc-loans-service:0.3 > docker/images/loans-service-0.3.tar

echo "Saving loan applications service docker image..."
docker save imesh/wso2-microservices-poc-loan-applications-service:0.3 > docker/images/loan-applications-0.3.tar

echo "Saving wso2apim docker image..."
docker save imesh/wso2-microservices-poc-wso2apim:2.1.0-v2 > docker/images/wso2apim-2.1.0-v2.tar

echo "Saving wso2apim analytics service docker image..."
docker save imesh/wso2-microservices-poc-wso2apim-analytics:2.1.0-v2 > docker/images/wso2apim-analytics-2.1.0-v2.tar

echo "Saving mysql docker image..."
docker save imesh/wso2-microservices-poc-wso2ei-bps:6.1.1-v2 > docker/images/wso2ei-bps-6.1.1-v2.tar
