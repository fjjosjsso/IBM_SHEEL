#!/bin/bash
read -p "Enter your Telugu marks" marks
if [ $marks -gt 35 ]
then
    echo "YOUR ARE PASS"
else
    echo "YOUR ARE FAILD"
fi

read -p "Enter your English marks" English_marks
if [ $marks -gt 35 ]
then
    echo "YOUR ARE PASS"
else
    echo "YOUR ARE FAILD"
fi

read -p "Enter your maths marks" Maths_marks
if [ $marks -gt 35 ]
then
    echo "YOUR ARE PASS"
else
    echo "YOUR ARE FAILD"
fi