#!/bin/bash

sudo su
#dnf -y install epel-release
#echo "inicio da instalação do ansible"
cd /etc/yum.repos.d/
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
sudo yum update -y
yum install -y vim net-tools
#cat <<EOT >> /etc/hosts
#192.168.15.99 ansible
#192.168.1.3 app01
#192.168.1.4 db01
#EOT