FROM mysql:5.6

ENV MYSQL_ROOT_PASSWORD root

# COPY mysql/resources/apimgt.sql /docker-entrypoint-initdb.d/apimgt.sql
# COPY mysql/resources/registry.sql /docker-entrypoint-initdb.d/registry.sql
# COPY mysql/resources/userstore.sql /docker-entrypoint-initdb.d/userstore.sql
COPY mysql/resources/dbdump.sql /docker-entrypoint-initdb.d/dbdump.sql

# COPY mysql/resources/aggregator_mgtdb.sql /docker-entrypoint-initdb.d/aggregator_mgtdb.sql

COPY mysql/my.cnf /etc/mysql/my.cnf

RUN /entrypoint.sh mysqld & sleep 120 && killall mysqld

# RUN rm /docker-entrypoint-initdb.d/apimgt.sql && \
    # rm /docker-entrypoint-initdb.d/registry.sql && \
    # rm /docker-entrypoint-initdb.d/userstore.sql && \
    # rm /docker-entrypoint-initdb.d/aggregator_mgtdb.sql \
RUN rm /docker-entrypoint-initdb.d/dbdump.sql
