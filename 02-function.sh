#!/bin/bash

function check_pass_or_fail {
    if [ $marks -ge 35 ]
    then
        echo "You are just pass"
    elif [ $marks -ge 60 ]
    then
        echo "You are 2st class"
    elif [ $marks -ge 75 ]
    then
        echo "you are 1st class"
    elif [ $marks -ge 90 ]
    then
        echo "You are topper"
    else
    then
        echo "you are fail"
}

read -p "Enter your Telugu marks: " marks
check_pass_or_fail
read -p "Enter your English marks: " marks
check_pass_or_fail
read -p "Enter your Maths marks: " marks
check_pass_or_fail
read -p "Enter your science marks: " marks
check_pass_or_fail