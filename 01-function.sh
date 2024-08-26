#!/bin/bash

function check {
    if [ $marks -gt 35 ]
then
    echo "YOUR ARE PASS"
else
    echo "YOUR ARE FAILD"
fi
}
read -p "Enter your Telugu marks" marks
check

read -p "Enter your English marks" marks
check

read -p "Enter your maths marks" marks
check