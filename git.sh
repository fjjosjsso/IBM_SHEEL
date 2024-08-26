#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]
then
    echo "Your not in root access:: Kindly get root access with sudo su -"

else
    echo "Your are in root access"
    
fi
yum install mysql -y