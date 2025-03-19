#!/bin/bash

#This is a script for setting a website.

#Installing Dependencies

echo "##############################"
echo "Installing packages."
echo "##############################"

sudo yum install wget unzip httpd -y > /dev/null
echo

#Start & Enable HTTPD Service
echo "##############################"
echo "Start & Enable HTTPD Service"
echo "##############################"
sudo systemctl start httpd
sudo systemctl enable httpd


#Creating Temp Directory
echo "##############################"
echo "Starting Artifact Deployment"
echo "##############################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/


#Bounce Service
echo "##############################"
echo "Restarting HTTPD Service"
echo "##############################"
sudo systemctl restart httpd
echo

#Cean Up
echo "##############################"
echo "Removing Temporary Files"
echo "##############################"
rm -rf /tmp/webfiles
echo

#Printing HTTPD Service Status
echo "##############################"
echo "HTTPD Service Status"
echo "##############################"
sudo systemctl status httpd
echo

ls /var/www/html/
