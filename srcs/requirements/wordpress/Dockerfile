FROM debian:buster

RUN apt-get -y update

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y

COPY ./tools/script.sh /
COPY ./conf/wp-config.php /

RUN chmod 777 /script.sh

CMD [ "/script.sh" ]
