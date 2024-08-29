#!/bin/bash
APP_LOG_DIRECTORY=/home/ec2-user/app_log/
DATE=$(date +%F)
SCRIPT_NAME=$0
DELETED_LOG_TO_BE_STORED=/home/ec2-user/shellscript_log
LOGFILE=$DELETED_LOG_TO_BE_STORED/$SCRIPT_NAME-$DATE.log
FILE_TO_DELETE=$(find /home/ec2-user/app_log -type f -name "*.log" -mtime 14)
echo -e "\e[31m $FILE_TO_DELETE \e[0m"




