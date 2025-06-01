FROM debian:bullseye

RUN mkdir -p /run/mysqld

RUN apt-get update && \
    apt-get install -y \
    mariadb-server

COPY ./tools/db-init.sh /tmp/db-init.sh

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /tmp/db-init.sh

CMD [ "/tmp/db-init.sh"]