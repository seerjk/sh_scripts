#!/bin/bash
# check the user whether login per 5 minutes
# version: 0.1
echo -n "Input the username: "
read username

while true; do
  clear
  date | awk '{print $4}'
  if who | grep $username -q; then
  # if who | grep $username > /dev/null; then
    echo "$username logined."
  else
    echo "$username didn't login."
  fi
  # pause 5min
  sleep 2
done
