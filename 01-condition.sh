#!/bin/bash
read -p "Write your interest in Sports" choose
if [ $choose -et cricket ]
then
    echo "This boy not elisible for other sports"
 else
    echo "This boy is elisible for all sports"
 fi
