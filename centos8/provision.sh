#!/bin/bash

sudo su
dnf -y install epel-release
#echo "inicio da instalação do ansible"
#cd /etc/yum.repos.d/
#sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
#sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
dnf update -y
dnf install -y vim net-tools
#cat <<EOT >> /etc/hosts
#192.168.15.99 ansible
#192.168.1.3 app01
#192.168.1.4 db01
#EOT
cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyMfDYoiMdemQG8HcbL+pLi2T0tcjdiinU3LVR3JuO06kFsIBtK3kZG2uhDu1UWQzOpVKgV1844rmVF8mAX+mqQz23x5mkr7+MDmAjWCEnQkp3RekomTZsnNHPT4E1Fhgk75tzqRfchpzOhl1xOwoWRT2wGASrN2t0g37DQS06wdeOFDB4/Y2Sq3ixD8AUlRWFD+chUv2ILfL8mOt6PqnotxGaa1+SdGcMtwDgYuXTIC7wJC88VSlK1zR6jv1eYiyig+ZPqj+7Bje0AAoQqZD6VqDOdi0nseNw9e6NO9ePjme2BNmup1KZjl4bgujkswO/4vx9ICoyJgvfCeVVWxLh vagrant@control-node
EOT