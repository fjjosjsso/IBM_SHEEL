#!/bin/bash

DATE=$(date +F%)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

USER_ID=$(id -u)
function user_id {
    if [ $USER_ID -ne 0 ]
    then
        echo -e "$R ERROR::: You are not in root access $N"
    else
        echo -e "$G INFO ::: your are in root access $N"
    fi
}

function check {
    if [ $1 -ne 0 ]
    then
        echo -e "$R...........$2 fail $N"
    else
        echo -e "$G............$2 SUCUSSES $N"
    fi
}

yum install git -y &>>$LOGFILE
check $? "INSTALLING GIT "

yum install postfix -y &>>$LOGFILE
check $? "INSTALLING POSTFIX "

