#!/bin/bash

sudo su
dnf -y install epel-release
echo "inicio da instalação do ansible"
#cd /etc/yum.repos.d/
#sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
#sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
#sudo yum update -y
dnf install -y vim ansible
cat <<EOT >> /etc/hosts
192.168.14.99 ansible
192.168.14.10 centos8
192.168.14.102 debian10
EOT