#!/bin/bash

date=$(date +%d-%m-%Y-%H:%M)
nameoffile="number_connection-"$date
echo $nameoffile

last a | grep -c a > ~/shell-exe/job8/$nameoffile

mkdir -p ~/shell-exe/job8/Backup
tar -cvf ~/shell-exe/job8/Backup/$nameoffile.tar $nameoffile
rm ~/shell-exe/job8/$nameoffile



#le reglage de cron se fait avec crontab -e en tapant la commande suivante 
# 0 */1 * * * ~/shell-exe/job8/get_logs.sh



