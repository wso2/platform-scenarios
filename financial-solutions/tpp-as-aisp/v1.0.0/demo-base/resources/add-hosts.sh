#!/bin/bash

HOST_IP=`/sbin/ip route|awk '/default/ { print $3}'`
echo ${HOST_IP}  '  api.silverbank.com' >> /etc/hosts
echo ${HOST_IP}  '  api.goldbank.com' >> /etc/hosts
echo ${HOST_IP}  '  identity.tpp.com' >> /etc/hosts
echo ${HOST_IP}  '  integration.tpp.com' >> /etc/hosts
echo ${HOST_IP}  '  api.tpp.com' >> /etc/hosts
