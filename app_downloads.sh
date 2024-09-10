#!/bin/bash
#LOGFILES SCRIPT FOR THAT WE NEED "DATE, LOGDIRECTORY=TO WHERE IT CAN BE STORE, SCRIPTNAME"
DATE=$(date +%Y-%M-%D)
LOG_DIRECTORY=/root/shellscript.log

SCRIPT_NAME=$0
LOGFILES=$LOG_DIRECTORY/$SCRIPT_NAME-$DATE.log
#COLOURS NOTATIONS
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

#USER CHECK WEATHER USER IS IN ROOT ACCESS OR NOT
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
    echo -e "$R ERROR::: YOUR PERMISSION DENIED YOUR ARE NOT IN ROOT ACCESS $N"
    
else
    echo -e "$G INFO::: YOUR ARE ROOT ACCESS $N"
fi

function validation {
    if [ $1 -ne 0 ]
    then
        echo -e "$R ERROR::: INSTALLING $2 FAILED $N"
    else
        echo -e "$G INFO::: INSTALLING $2 SUCCESS $N"
    fi
}
for i in $@
do
    yum list installed &>> $LOGFILES
    if [ $i -ne 0 ]
    then
        echo -e "$R $i WAS NOT INSTALLED KINDLY INSTALL $N"
        yum install $i -y &>> $LOGFILES
    else
        echo -e "$Y $@ WAS INSTALLED ALREDY $N"
    fi
done
validation $? "$@"