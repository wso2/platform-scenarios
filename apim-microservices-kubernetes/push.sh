#!/bin/bash
set -e

echo "Pushing customers service docker image..."
docker push imesh/wso2-microservices-poc-customers-service:0.3

echo "Pushing credits service docker image..."
docker push imesh/wso2-microservices-poc-credits-service:0.3

echo "Pushing loans service docker image..."
docker push imesh/wso2-microservices-poc-loans-service:0.3

echo "Pushing loan applications service docker image..."
docker push imesh/wso2-microservices-poc-loan-applications-service:0.3

echo "Pushing wso2apim docker image..."
docker push imesh/wso2-microservices-poc-wso2apim:2.1.0-v2

echo "Pushing wso2apim analytics service docker image..."
docker push imesh/wso2-microservices-poc-wso2apim-analytics:2.1.0-v2

echo "Pushing mysql docker image..."
docker push imesh/wso2-microservices-poc-wso2ei-bps:6.1.1-v2
