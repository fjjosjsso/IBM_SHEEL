#!/bin/bash
APP_LOGS_DIRECTORY=/home/centos/app-logs
DATE=$(date +%Y-%M-%D)
SCRIPT_NAME=$0
LOG_DIRECTORY=/home/centos/shellscript-logs
LOGFILE=$LOG_DIRECTORY/$0-$DATE.log

FILE_TO_BE_DELETE=$(find $APP_LOGS_DIRECTORY -name "*.log" -type f -mtime +5)
echo -e "\e[31m $FILE_TO_BE_DELETE \e[0m"

while read line
do 
    echo -e "\e[34m $line" &2> $LOGFILE
    rm -rf $line 
done <<< $FILE_TO_BE_DELETE
