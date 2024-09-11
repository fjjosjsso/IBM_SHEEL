#!/bin/bash
APP_LOGS_DIRECTORY=/home/ec2-user/old.logs

DATE=$(date +%F.%H.%M.%S)
SCRIPT_NAME=$0
LOGSDIR=/home/ec2-user/shellscript.logs
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

FILE_TO_DELETE=$(find $APP_LOGS_DIRECTORY -name "*.log" -type f -mtime +14)

echo "DELETING FILE WILL BE $FILE_TO_DELETE" &>>$LOGFILE

while read line
do
    echo -e "\e[33m    DELETING LOGS $LINE \e[0m" &>>$LOGFILE
    rm -rf $line &>>$LOGFILE
done <<< $FILE_TO_DELETE


