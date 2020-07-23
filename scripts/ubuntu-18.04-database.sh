#!/bin/bash

apt update -y 

# MySQL
apt install -y mysql-server 
systemctl start mysql
systemctl enable mysql

mysql -u root -e "SHOW DATABASES";
