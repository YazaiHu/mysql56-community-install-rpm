#!/bin/sh
yum install -y numactl perl-DBI postfix

/bin/cp -f RPM-GPG-KEY-mysql  /etc/pki/rpm-gpg/
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql

rpm -e --nodeps mysql-libs-5.1.73-5.el6_6.x86_64

# from this url to download the package 
# Version: 5.6 http://repo.mysql.com/yum/mysql-5.6-community/el/6/x86_64/
rpm -Uvh --force mysql-community-common-5.6.35-2.el6.x86_64.rpm
rpm -Uvh --force mysql-community-libs-5.6.35-2.el6.x86_64.rpm
rpm -Uvh --force mysql-community-libs-compat-5.6.35-2.el6.x86_64.rpm
rpm -Uvh --force mysql-community-client-5.6.35-2.el6.x86_64.rpm
rpm -Uvh --force mysql-community-server-5.6.35-2.el6.x86_64.rpm

# Version: 5.7 http://repo.mysql.com/yum/mysql-5.7-community/el/6/x86_64/
rpm -Uvh --force mysql-community-common-5.7.17-1.el6.x86_64.rpm
rpm -Uvh --force mysql-community-libs-5.7.17-1.el6.x86_64.rpm
rpm -Uvh --force mysql-community-libs-compat-5.7.17-1.el6.x86_64.rpm
rpm -Uvh --force mysql-community-client-5.7.17-1.el6.x86_64.rpm
rpm -Uvh --force mysql-community-server-5.7.17-1.el6.x86_64.rpm

service mysqld start

#run mysql_secure_installation command to setting the root password, removing anonymous users, and so on

