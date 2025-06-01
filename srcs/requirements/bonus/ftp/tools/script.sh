#!/bin/bash

systemctl enable vsftpd

mkdir -p /var/run/vsftpd/empty
chmod 755 /var/run/vsftpd/empty

useradd -m ftpuser
echo "ftpuser:1" | chpasswd

vsftpd