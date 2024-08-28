#!/bin/bash

USER_ID=$(id -u)
CHECK=$($?)
if [ $USER_ID -ne 0 ]
then
    echo -e "\e[1;31m ERROR::: Permission Denied You are not in Root access \e[0m"
    exit 1
else
    echo -e "\e[1:32m INFO::: You are in root access \e[0m"
fi
yum install git -y

if [ $CHECK -et 0 ]
then
    echo -e "\e[1;32m INSTALLING GIT SUCUSSES  \e[0m"
    exit 1
else
    echo -e "\e[1;31m INSTALLING GIT faild \e[0m"
fi

if [ $USER_ID -ne 0 ]
then
    echo -e "\e[1;31m ERROR::: Permission Denied You are not in Root access \e[0m"
    exit 1
else
    echo -e "\e[1:32m INFO::: You are in root access \e[0m"
fi
yum install postfix -y
if [ $CHECK -et 0 ]
then
    echo -e "\e[1;32m INSTALLING POSTFIX SUCUSSES \e[0m"
    exit 1
else
    echo -e "\e[1;31m INSTALLING POSTFIX  fail \e[0m"
fi

