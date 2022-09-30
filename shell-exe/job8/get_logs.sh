#!/bin/bash

date=$(date +%d-%m-%Y-%H:%M)
nameoffile="number_connection-"$date
echo $nameoffile

last a | grep -c a > ~/shell-exe/job8/$nameoffile
mkdir -p ~/shell-exe/job8/Backup
tar -cvf "Backup/$nameoffile.tar" $nameoffile
rm ~/shell-exe/job8/$nameoffile



