#!/bin/bash
sudo apt-get update &&
clear &&
sudo apt-get install aptitude -y &&
sudo aptitude full-upgrade -y &&
sudo add-apt-repository ppa:webupd8team/java -y &&
sudo apt-get update &&
clear &&
sudo apt-get install oracle-java7-installer -y &&
sudo apt-get update &&
sudo apt-get install oracle-java7-set-default -y &&
sudo apt-get update &&
clear &&
sudo aptitude install -y ubuntu-restricted-extras python3.4 idle-python3.4 python-pygame pypy pypy-tk python-forgethtml libdvdread4 &&
sudo apt-get update &&
clear &&
sudo aptitude install -y apache2 mysql-server-5.5 mysql-client-5.5 mysql-workbench libappindicator1 &&
sudo /usr/share/doc/libdvdread4/install-css.sh &&
sudo apt-get update &&
clear &&
sudo wget 'http://ftp.unicamp.br/pub/apache/tomcat/tomcat-7/v7.0.59/bin/apache-tomcat-7.0.59.tar.gz' &&
sudo tar xvfz apache-tomcat-7.0.59.tar.gz -C /opt &&
sudo wget 'http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-linux-gtk.tar.gz' &&
sudo tar xvfz eclipse-jee-luna-R-linux-gtk.tar.gz -C /opt &&
sudo wget 'https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb' &&
sudo dpkg -i google-chrome-stable_current_i386.deb &&
sudo wget 'http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.34.tar.gz' &&
sudo tar xvfz mysql-connector-java-5.1.34.tar.gz -C /opt &&
sudo mv /opt/mysql-connector-java-5.1.34/mysql-connector-java-5.1.34-bin.jar /opt/apache-tomcat-7.0.59/lib/ &&
sudo rm -r /opt/mysql-* &&
sudo chmod -R 755 /opt/apache-tomcat-7.0.59 &&
/opt/apache-tomcat-7.0.59/bin/startup.sh &&
google-chrome http://localhost:80 &&
clear &&
google-chrome http://localhost:8080 &&
clear &&
/opt/apache-tomcat-7.0.59/bin/shutdown.sh
/opt/eclipse/eclipse &&
clear &&
sudo chmod -R 777 /media &&
sudo shutdown -h 00:15 "Muito bem! Seu ambiente foi configurado com sucesso."
