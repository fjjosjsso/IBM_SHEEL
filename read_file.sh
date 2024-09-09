#!/bin/bash
FILE="/home/centos/IBM_SHEEL/fuck.txt"
for name in $(cat $FILE)
do
    echo "Name is ::: $name"
done
