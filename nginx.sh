#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
#nginx step 1
apt update
apt install nginx
ufw allow 'Nginx HTTP'
#MariaDB
apt install mariadb-server
mysql_secure_installation
mariadb

