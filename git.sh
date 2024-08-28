#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
    echo -e "\e[1;31m Error:: Permission denied Kinly used with root access \e[1;0m"
        exit 1
else
    echo -e "e\[1;32m INFO:: Your are in root access \e[1;0m"
    
fi
sudo yum install git -y
