#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ge 0 ]
then
    echo "Your not in root access:: Kindly get root access with sudo su -"
else
    echo "Your are in root access"
    yum install mysql -y
fi