#!/bin/bash

apt update -y 

# MySQL
apt install -y mysql-server 
ufw enable
ufw allow mysql ssh
systemctl start mysql
systemctl enable mysql

mysql -u root -e "SHOW DATABASES";
