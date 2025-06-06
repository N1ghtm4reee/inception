#!/bin/bash

curl -fsSL https://packages.redis.io/gpg | gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg

chmod 644 /usr/share/keyrings/redis-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/redis.list

apt-get install redis -y

mkdir -p /etc/redis

rm -f /etc/redis/redis.conf

cp /tmp/redis.conf /etc/redis/

redis-server --protected-mode no