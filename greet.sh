#!/bin/bash
# greet to everyone

echo "Enter your name: "
read name
hour=`date | awk '{print $4}' | awk -F: '{print $1}'`
# echo "enter hour:"
# read hour

if [ $hour -l 12 ]; then
  echo "Good morning, $name."
elif [ $hour -lt 18 ]; then
  echo "Good afternoon, $name."
else
  echo "Good evening, $name."
fi
