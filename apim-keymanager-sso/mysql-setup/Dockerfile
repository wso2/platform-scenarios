FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD root

COPY db-dump.sql /docker-entrypoint-initdb.d/db-dump.sql
COPY my.cnf /etc/mysql/my.cnf

RUN /entrypoint.sh mysqld & sleep 90 && killall mysqld
RUN mv /docker-entrypoint-initdb.d/db-dump.sql /tmp/db-dump.sql