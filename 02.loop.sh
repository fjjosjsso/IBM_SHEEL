#!/bin/bash

USER_ID=$(id -u)
DATE=$(date +F%)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
USER_ID=$(id -u)
function user_id {
    if [ $USER_ID -ne 0 ]
    then
        echo -e "$R ERROR::: You are not in root access $N"
    else
        echo -e "$G INFO ::: your are in root access $N"
    fi
}
function validation {
    if [ $1 -ne 0 ]
    then
        echo -e "$R ..........$2 Faild $N"
    else
        echo -e "$G...........$2 sucusses $N"
    fi
}

for i in $@
    do 
        yum list installed $i &>>$LOGFILE
        if [ $? -ne 0 ]
        then
            echo -e "$R .........$i not installed $N"
            yum installed $i -y &>>$LOGFILE
            validation $? "Installing ...........$i"
        else
            echo -e "$Y.......$i already installed"
        fi
    done
    
            