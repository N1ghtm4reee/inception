FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y wget php

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

CMD [ "/tmp/script.sh" ]