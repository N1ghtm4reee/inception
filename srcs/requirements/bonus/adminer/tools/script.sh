#!/bin/bash

mkdir -p /var/www/html/adminer/

touch /var/www/html/adminer/index.php

wget https://www.adminer.org/latest.php -O /var/www/html/adminer/index.php

php -S 0.0.0.0:8080 -t /var/www/html/adminer/