FROM ubuntu

ARG SERVICE_NAME=nginx

ADD ${SERVICE_NAME}/resources /tmp/resources

RUN apt-get update && apt-get install -y nginx
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
RUN rm -rf /etc/nginx/sites-enabled/default

RUN mv /tmp/resources/ssl /etc/nginx/ssl
RUN mv /tmp/resources/servers/* /etc/nginx/sites-enabled/

EXPOSE 443
EXPOSE 8280
EXPOSE 8243

CMD ["nginx", "-g", "daemon off;"]
