#!/bin/bash
usercheck=$(id -u)
if [ $usercheck -ne 0 ]
then
        if [ $@ -eq "mongodb" ]
        then 
        sudo vi /etc/yum.repos.d/mongodb-org.repo
        yum install -y mongodb-org
        systemctl start mongod
        systemctl status mongod
        else

    echo -e "\e[31m Error::: Permission denied your are not in root \e[0m"
    exit 1
    echo -e "\e[32m INFO::: Your are in root access \e[0m"
    fi
fi

sudo yum install $@ -y

if [ $? -ne 0 ]
then
    echo -e "\e[31m INSTALLING $@ WAS FAILED \e[0m"
else
    echo -e "\e[32m INSTALLING $@ WAS SUCESS \e[0m"
fi