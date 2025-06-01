FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y lsb-release curl gpg systemd

COPY ./tools/script.sh /tmp/script.sh

COPY ./tools/redis.conf /tmp/redis.conf

RUN chmod +x /tmp/script.sh

CMD [ "/tmp/script.sh" ]