#!/bin/bash
read -p "write your marks" marks
if [ $marks -ge 35 ]
then
    echo "You are pass"
else
    echo "You are fail"
fi