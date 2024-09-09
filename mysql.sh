#!/bin/bash
usercheck=$(id -u)
if [ $usercheck -ne 0 ]
then
    echo -e "\e[1:31m Error::: Permission denied your are not in root \e[1:0m"
    exit 1
else
    echo " \e[1:32m INFO::: Your are in root access \e[1:0m"
fi

sudo yum install mysql -y

if [ $? -ne 0 ]
then
    echo "\e[1:31m INSTALLING MYSQL WAS FAILED \e[1:0m"
else
    echo "\e[1:32m INSTALLING MYSQL WAS SUCESS \e[1:0m"
fi