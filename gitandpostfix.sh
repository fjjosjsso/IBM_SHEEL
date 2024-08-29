#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
    echo -e "\e[31m INFO:: You are not in root access \e[0m"
    exit 1
else
    echo -e "\e[32m INFO::: You are root access \e[0m"
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo -e "\e[31m ERROR::: INSTALLING GIT WAS FAILD \e[0m"
else
    echo -e "\e[32m INFO::: INSTALLING GIT WAS SUCUSSESFULL \e[0m"
fi

