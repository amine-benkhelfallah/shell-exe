#!/bin/bash
#installer proftpd 
sudo apt-get install proftpd-*
#installer oppenssl
sudo apt-get install openssl
#Creation d'un sous dossier ssl dans le dossier proftpd
sudo mkdir /etc/proftpd/ssl
#configuration de proftpd
sudo cp proftpd.txt /etc/proftpd/proftpd.conf
#configuration de modules
sudo cp modules.txt /etc/proftpd/modules.conf
#configuration de tls
sudo cp tls.txt /etc/proftpd/tls.conf
#Certificat de ssl
sudo openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem 
#Donner l'accés aux fichiers et aux repertoires 
sudo chmod 640 /etc/proftpd/ssl/proftpd.cert.pem
sudo chmod 600 /etc/proftpd/ssl/proftpd.key.pem
#validation des modification et restart
sudo systemctl restart proftpd

sudo apt update
sudo apt upgrade
#installer filezilla
sudo install filezilla



