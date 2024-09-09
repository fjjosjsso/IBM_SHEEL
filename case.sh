#!/bin/bash
echo -e "\e[1;34m ::: A FOR To know present working directory \e[3;0m"
echo -e "\e[1;33m ::: B For to know user id \e[3;0m"
echo -e "\e[1;35m ::: C For to know date \e[3;0m"
echo -e "\e[1;36m ::: D For to know scrit name \e[3;0m"

read get 
case $get in
        (A)pwd;;
        (B)id -u;;
        (C)date;;
        (D)$0;;
        (E)echo "Please provide valid input"
esac
