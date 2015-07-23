#!/bin/bash
# check the user whether login per 5 minutes
# version: 0.2

if test $# -ne 1; then
  echo "Usage: $0 USERNAME"
else
  user="$1"
  until who | grep "$user" -q; do
    sleep 3
  done
  echo "$user has logged on!"
fi
