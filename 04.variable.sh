#!/bin/bash
DATE=$(date)
PWD=$(pwd)
USER_ID=$(id -u)
TIMEZONE_INFO=$(cat /usr/share/zoneinfo/Asia)

echo "$DATE"
echo "Present working directory: $PWD"
echo "User information : $USER_ID"
echo "All time zones in Asia: $TIMEZONE_INFO"

