FROM debian:12.10

RUN apt update && \
    apt install -y nginx openssl

RUN chown -R www-data:www-data /var/www/html

COPY ./tools/default /etc/nginx/sites-available/default

COPY ./tools/nginx.sh /tmp/nginx.sh

RUN chmod +x /tmp/nginx.sh

CMD [ "/tmp/nginx.sh" ]