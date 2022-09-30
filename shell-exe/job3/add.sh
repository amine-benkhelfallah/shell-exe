#!/bin/bash
a=$1
b=$2
resultat=`echo "(($a + $b))" |bc -l`
echo $resultat
