#!/bin/bash -x
echo "start time:"
date
NOW=$(date +"%d-%m-%y")
bzip2 -d -k /usr/local/dumps/dump_$NOW.txt.bz2
if [ -f /usr/local/dumps/dump_$NOW.txt ];then
#echo "stopped on ajeets request"
mysql -u hkadmin -padmin2K11! information_schema -e "drop database healthkart_stag"
mysql -u hkadmin -padmin2K11! information_schema -e "create database healthkart_stag"
echo "db rebuild start at:"
date
/usr/bin/mysql -u hkadmin --password=admin2K11! healthkart_stag < /usr/local/dumps/dump_$NOW.txt
echo "db rebuild at:"
echo "stopped on ajeet's request"
date
/usr/bin/mysql -u hkadmin --password=admin2K11! healthkart_stag < /root/update_email.sql
#echo "stopped on ajeets request"
echo "emails updated at:"
date
else
echo "update database sql not exits"
fi

OLDDATE=$(date --date='2 day ago' +"%d-%m-%y")
rm /usr/local/dumps/dump_$OLDDATE.txt
rm /usr/local/dumps/dump_$OLDDATE.txt.bz2
echo "deleted zip and decompressed for date: "
echo $OLDDATE
echo "dump removed"
