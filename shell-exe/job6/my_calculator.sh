#!/bin/bash 
a=$1
b=$2
c=$3
[ $2=- ]
[ $2=+ ]
[ $2=* ]
[ $2=/ ]
resultat=`echo "(($a$b$c))" |bc -l`
echo $resultat
