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
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCoz7XIClaVORsV9ceUjH2Fl86Zv3Gz+cxr4gbU0SaA3dreUotdsu2+w/UJqOCIGeDESvDn7wyIhbjRhjcumcg28GKiQJ0G4RdQE6sZkpw0caiMglMtoucSKrkBU0eETHo2W0/2fnQ/HoYARZVsukBQca506GV1mw2/WDSa9GKNA/KzgRY6PjIRbGz3xGqjacyb7fUOtfhW0tQ+D577xNc7HFEoRF2HrW7sl23WIc55I84RpJxqb+mznfjgeBUpJQbgWKo44fj39eMhrISd/OHNdeV/ffMKwvAwVJ8msE1wVfBNf2Yq9GBFLEP633DAAxAqJYdEDWLcJNUl3IQahvdY8V4scwjF4T2D4jWofFF9MCKwxFZ7QcScQLZvX4KC8tm0ZCR1gfViXl82Go+859y73KZVQO4EOd6mwrsqA7hsS/Au0wzvaACHsRbVOddwdgvfMsBGBtx/yLOZg20J+Erbgej2LcbB1XS432TbopU0/36cHmRsBrECA6ZwPxDP1Ek= vagrant@ansible
EOT