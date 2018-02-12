#!/bin/bash

# Add Host Entries
HOST_IP=`/sbin/ip route|awk '/default/ { print $3}'`
echo ${HOST_IP}  '  api.xyzbank.com' >> /etc/hosts
echo ${HOST_IP}  '  identity.tpp.com' >> /etc/hosts
echo ${HOST_IP}  '  integration.tpp.com' >> /etc/hosts
echo ${HOST_IP}  '  api.tpp.com' >> /etc/hosts

#start Tomcat
/usr/local/tomcat/bin/catalina.sh run
