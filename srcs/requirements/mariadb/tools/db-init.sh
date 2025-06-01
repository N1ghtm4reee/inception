#!/bin/bash

mkdir -p run/mysqld
chown -R mysql:mysql /run/mysqld

chown -R mysql:mysql /run/mysqld

mkdir -p /var/log/mysql /var/lib/mysql

chown -R mysql:mysql /var/lib/mysql /var/log/mysql
chmod -R 755 /var/lib/mysql /var/log/mysql

cat <<EOF > /etc/mysql/init.sql
CREATE DATABASE IF NOT EXISTS $DB_NAME;

CREATE USER IF NOT EXISTS '$DB_ADMIN_USER'@'%' IDENTIFIED BY '$DB_ADMIN_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_ADMIN_USER'@'%';

CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';
GRANT SELECT ON $DB_NAME.* TO '$DB_USER'@'%';
FLUSH PRIVILEGES;

EXIT;
EOF

mariadb-install-db

mysqld_safe