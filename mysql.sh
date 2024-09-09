#!/bin/bash
usercheck=$(id -u)
if [ $usercheck -ne 0 ]
then
    echo "Error::: Permission denied your are not in root"
    exit 1
else
    echo "INFO::: Your are in root access"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "INSTALLING MYSQL WAS SUCCESS"
else
    echo "INSTALLING MYSQL WAS FAILED"
fi