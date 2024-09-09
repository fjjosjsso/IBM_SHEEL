#!/bin/bash
USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
if [ $USER_ID -ne 0 ]
then
    echo -e "$R ERROR::: YOUR ARE NOT IN ROOT ACCESS KINLDY GET ROOT PERMISSION $N"
    exit 1
else
    echo -e "$G INFO::: YOUR ARE IN ROOT ACCESS $N"
fi
function validation {
    if [ $1 -ne 0 ]
    then
        echo -e "$R ..........INSTALLING $@ WAS FAILED $N"
    else 
        echo -e "$Y............INSTALLING $@ was SUCCESSFULL $N"
    fi
}
yum install $@ -y 
validation $? 