FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y php7.4-fpm \
    php7.4-cli \
    php7.4-common \
    php7.4-mysql \
    php7.4-xml \
    php7.4-mbstring \
    php7.4-curl \
    php7.4-zip \
    curl

COPY ./tools/www.conf /etc/php/7.4/fpm/pool.d/

COPY ./tools/wp.sh /tmp/wp.sh

RUN chmod +x /tmp/wp.sh

CMD ["/tmp/wp.sh"]