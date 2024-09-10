#!/bin/bash
DATE=$(date +%Y//%M//%D)
LOG_DIRECTORY=/home/centos/shellscript.log/
SCRIPT_NAME=$0
LOGFILE=$LOG_DIRECTORY/$SCRIPT_NAME-$DATE.log
AAP_LOG_DIRECTORY=/home/centos/old.log

FILE_TO_BE_DELETE=$(find $AAP_LOG_DIRECTORY -type f -name "*.log" -mtime +8)
echo -e "\e[31m $FILE_TO_BE_DELETE \e[0m"

echo -e "\e[33m Exection time and date $DATE \e[0m" &>>$LOGFILE
while read line
do
    echo "Deleting $line" &>>$LOGFILE
    rm -rf $line
done <<< $AAP_LOG_DIRECTORY





