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

if [ $CHECK -ne 0 ]
then
    echo -e "\e[1;31m INSTALLING GIT FAILD \e[0m"
    exit 1
else
    echo -e "\e[1;32m INSTALLING GIT SUCUSSES \e[0m"
fi

if [ $USER_ID -ne 0 ]
then
    echo -e "\e[1;31m ERROR::: Permission Denied You are not in Root access \e[0m"
    exit 1
else
    echo -e "\e[1:32m INFO::: You are in root access \e[0m"
fi
yum install postfixx -y
if [ $CHECK -ne 0 ]
then
    echo -e "\e[1;31m INSTALLING POSTFIX FAILD \e[0m"
    exit 1
else
    echo -e "\e[1;32m INSTALLING POSTFIX SUCUSSES \e[0m"
fi

