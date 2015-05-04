#!/usr/bin/env bash

# Variables
APPENV=local
DBHOST=localhost
DBNAME=dbname
DBUSER=admin
DBPASSWD=Admin123


apt-get update

echo -e "\n--- Installing Apache ---\n"

apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi


echo -e "\n--- Installing eclipse ---\n"
sudo apt-get -y install eclipse


echo -e "\n--- Installing jdk ---\n"
sudo apt-get -y install openjdk-6-jdk


echo -e "\n--- Installing maven ---\n"
apt-cache search maven 
sudo apt-get -y install maven


echo -e "\n--- Installing mysql ---\n"
sudo apt-get -y install mysql-server mysql-client


echo -e "\n--- Installing tomcat6---\n"
sudo apt-get -y install tomcat6 tomcat6-admin tomcat6-common tomcat6-user tomcat6-docs tomcat6-examples



echo -e "\n--- Installing OpenMRS ---\n"
wget "http://liquidtelecom.dl.sourceforge.net/project/openmrs/releases/OpenMRS_2.1/openmrs-2.1-standalone.zip"

sudo mkdir /usr/share/tomcat6/.OpenMRS/
sudo chown -R tomcat6 /usr/share/tomcat6/.OpenMRS/

sudo apt-get -y install git-core 