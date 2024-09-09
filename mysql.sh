#!/bin/bash
usercheck=$(id -u)
if [ $usercheck -ne 0 ]
then
    echo -e "\e[31m Error::: Permission denied your are not in root \e[0m"
    exit 1
else
    echo -e "\e[32m INFO::: Your are in root access \e[0m"
fi

sudo yum remove mysql -y

if [ $? -ne 0 ]
then
    echo -e "\e[31m REMOVING MYSQL WAS FAILED \e[0m"
else
    echo -e "\e[32m REMOVING MYSQL WAS SUCESS \e[0m"
fi