#!/bin/bash
USER_ID=$(id -u)
function user_id {
    if [ $USER_ID -ne 0 ]
    then
        echo -e "\e[31m ERROR:::You are not in root access \e[0m"
    else
        echo -e "\e[32m INFO::: You are in root access \e[0m"
    fi
}
function check {
    if [ $? -ne 0 ]
    then
        echo -e "\e[31m ERROR::: INSTALLING PACKAGE FAILD \e[0m"
    else
        echo -e "\e[32m INFO::: INSTALLING PACKAGE SUCUSSES \e[0m"
    fi
}
user_id
yum install git -y
check
user_id
yum install postfix -y
check