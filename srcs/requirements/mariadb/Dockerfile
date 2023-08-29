FROM debian:buster

COPY ./tools/init.sql /docker-entrypoint-initdb.d/

RUN apt -y update
RUN apt install -y mariadb-server

EXPOSE 3306

CMD ["mysqld"]
