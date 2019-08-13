#!/bin/bash
#安裝mysql
sudo mkdir mysql
cd mysql
sudo wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum update
sudo yum install mysql-server
sudo chown mysql:mysql -R /var/lib/mysql
sudo mysqld --initialize
sudo systemctl start mysqld
sudo systemctl status mysqld

