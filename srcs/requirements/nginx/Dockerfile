FROM	debian:buster

#install all the program
RUN		apt-get update
RUN		apt-get install -y nginx \
                openssl


COPY ./conf/nginx.conf /etc/nginx/conf.d

# nginx config
RUN mkdir -p /etc/nginx/ssl

#the only port allowed
EXPOSE	443

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/dcruz-na.crt \
       -keyout /etc/nginx/ssl/dcruz-na.key \
       -subj "/C=SP/ST=Madrid/L=Madrid/O=42 Madrid/OU=dcruz-na.42.fr/CN=dcruz-na.42.fr/"

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
