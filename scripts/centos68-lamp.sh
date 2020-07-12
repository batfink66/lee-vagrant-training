#!/bin/bash

# update centos but exclude kernel packages 
yum update -y exclude=kernel

# Tools
yum install -y nano git unzip screen

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# PHP

yum install -y php php-cli php-common php-devel php-mysql

# MySQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld 
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

# Download starter content, using wget in quiet mode
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/batfink66/lee-vagrant-training/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/batfink66/lee-vagrant-training/master/files/info.php

service httpd restart
