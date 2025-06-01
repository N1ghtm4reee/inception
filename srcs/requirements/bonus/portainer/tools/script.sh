#!/bin/bash

curl -L https://github.com/portainer/portainer/releases/download/2.18.1/portainer-2.18.1-linux-amd64.tar.gz -o portainer.tar.gz \
    && tar -xzvf portainer.tar.gz \
    && mv portainer /usr/local/bin/portainer \
    && rm portainer.tar.gz

chmox +x /usr/local/bin/portainer/portainer

/usr/local/bin/portainer/portainer