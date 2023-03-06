#!/bin/bash
set -e
echo "*****    Installing Nginx    *****"
apt update -y 
apt install tomcat9 tomcat9-admin -y
systemctl enable tomcat9
ufw allow from any to any port 8080 proto tcp
curl 127.0.0.1:8080

echo "*****   Installation Complteted!!   *****"

echo "Welcome to Google Compute VM Instance deployed using Terraform!!!" > /var/www/html

echo "*****   Startup script completes!!    *****"