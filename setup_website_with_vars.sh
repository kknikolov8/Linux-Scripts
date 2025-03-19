#!/bin/bash

#This is a script for setting a website.

#Varaible Declaration

PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME="2098_health"
TMP_DIR="/tmp/webfiles"

#Installing Dependencies
echo "##############################"
echo "Installing packages."
echo "##############################"

sudo yum install $PACKAGE -y > /dev/null
echo

#Start & Enable HTTPD Service
echo "##############################"
echo "Start & Enable HTTPD Service"
echo "##############################"
sudo systemctl start $SVC
sudo systemctl enable $SVC


#Creating Temp Directory
echo "##############################"
echo "Starting Artifact Deployment"
echo "##############################"
mkdir -p $TMP_DIR
cd $TMP_DIR

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/


#Bounce Service
echo "##############################"
echo "Restarting HTTPD Service"
echo "##############################"
sudo systemctl restart $SVC
echo

#Cean Up
echo "##############################"
echo "Removing Temporary Files"
echo "##############################"
rm -rf $TMP_DIR
echo

#Printing HTTPD Service Status
echo "##############################"
echo "HTTPD Service Status"
echo "##############################"
sudo systemctl status $SVC
echo

ls /var/www/html/
