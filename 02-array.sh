#!/bin/bash
my_array_names=( sai ram sakaray sakare nani )

echo "First array word: ${my_array_names[1]}"
echo "Second array word : ${my_array_names[2]}"

echo "last array word: ${my_array_names[4]}"

echo "Print all names in array: ${my_array_names[*]}"
echo "How many names are there: ${#my_array_names[*]}"

echo "Print sakaray and sakare :${my_array_names[*]:2:2}"
