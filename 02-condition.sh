#!/bin/bash
read -p "Enter your Telugu marks" marks
if [ $marks -lt 35 ]
then
    echo "YOUR ARE FAILD"
else
    echo "YOUR ARE PASS"
fi

read -p "Enter your English marks" English_marks
if [ $marks -lt 35 ]
then
    echo "YOUR ARE FAILD"
else
    echo "YOUR ARE PASS"
fi

read -p "Enter your maths marks" Maths_marks
if [ $marks -lt 35 ]
then
    echo "YOUR ARE FAILD"
else
    echo "YOUR ARE PASS"
fi