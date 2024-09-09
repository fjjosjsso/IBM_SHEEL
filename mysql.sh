#!/bin/bash
user-id=$(id -u)
if [ $user-id -ne 0 ]
then
    echo "Error::: Permission denied your are not in root"
    exit 1
else
    echo "INFO::: Your are in root access"
fi

yum install mysql -y