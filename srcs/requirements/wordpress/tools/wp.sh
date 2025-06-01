#!/bin/bash

chown -R www-data:www-data /var/www/html/wordpress

mkdir -p /run/php

chmod 755 /run/php

chown -R root:root /var/www/html/wordpress

chmod -R 755 /var/www/html/wordpress

chown -R www-data:www-data /run/php

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

# wp core download --path=/var/www/html/wordpress --allow-root

# wp config create --dbhost=mariadb --dbname="${DB_NAME}" --dbuser="${DB_ADMIN_USER}" --dbpass="${DB_ADMIN_PASSWORD}" --path=/var/www/html/wordpress --allow-root

# wp core install --url="${URL}" --title="inception" --admin_user="${DB_ADMIN_USER}" --admin_password="${DB_ADMIN_PASSWORD}" --admin_email="${AD_MAIL}" --path=/var/www/html/wordpress --allow-root

wp core download --path=/var/www/html/wordpress --allow-root

wp config create \
  --dbhost=mariadb \
  --dbname="${DB_NAME}" \
  --dbuser="${DB_ADMIN_USER}" \
  --dbpass="${DB_ADMIN_PASSWORD}" \
  --path=/var/www/html/wordpress --allow-root

wp core install \
  --url="${URL}" \
  --title="inception" \
  --admin_user="${DB_ADMIN_USER}" \
  --admin_password="${DB_ADMIN_PASSWORD}" \
  --admin_email="${AD_MAIL}" \
  --path=/var/www/html/wordpress --allow-root

wp theme install twentysixteen --path=/var/www/html/wordpress --activate --allow-root

wp config set WP_REDIS_HOST 'redis' --path=/var/www/html/wordpress --type=constant --allow-root
wp config set WP_REDIS_PORT 6379 --path=/var/www/html/wordpress --type=constant --allow-root

rm -rf /var/www/html/wordpress/wp-config-sample.php

wp plugin install redis-cache --path=/var/www/html/wordpress --activate --allow-root

wp redis enable --path=/var/www/html/wordpress  --allow-root

php-fpm7.4 -F