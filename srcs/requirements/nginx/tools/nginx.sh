#!/bin/bash

mkdir -p ~/certs && cd ~/certs

openssl genrsa -out localhost.key 2048

openssl req -new -key localhost.key -out localhost.csr \
  -subj "/C=US/ST=Local/L=Localhost/O=LocalDev/CN=localhost"

openssl x509 -req -days 365 -in localhost.csr -signkey localhost.key -out localhost.crt

nginx -g 'daemon off;'