#!/bin/bash

column -s, -t Shell_Userlist.csv
cat Shell_Userlist.csv | column -s, -t

#pour donner le nombre de lignes
 #awk -F, 'END{print NR}' Shell_Userlist.csv
 
 #pour donner le nombre de colones
 #awk -F, 'END{print NF}' Shell_Userlist.csv

Id=$1
Prenom=$2
Nom=$3
Mdp=$4
Role=$5

echo "nom du user"
read user
if [ -u user]
then


