#!/bin/bash
sudo yum install mariadb-server mariadb -y
sudo systemctl start mariadb
sudo systemctl enable mariadb
sleep 10
sudo sed -i s/^SELINUX=.*$/SELINUX=permissive/ /etc/selinux/config
printf "\n n\n y\n y\n y\n y\n" | mysql_secure_installation
sleep 10
sudo mysql -e "CREATE DATABASE wordpress;"
sleep 10
sudo mysql -e "GRANT ALL ON *.* TO wpuser@'%' IDENTIFIED BY 'MySecureP@ss';"
sleep 10
sudo mysql -e "FLUSH PRIVILEGES ;"
sudo systemctl restart mariadb
sudo setenforce 0


# sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/sysconfig/selinux

# sed -i s/^SELINUX=.*$/SELINUX=permissive/ /etc/selinux/config