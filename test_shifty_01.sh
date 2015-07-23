#!/bin/bash
# demonstrating the shift command
# shift it moves each parameter variable one position to the left by default.
# $1 is discarded($0,the program name, remains unchanged)
echo
count=1
while [ -n "$1" ]; do
  echo "Parameter #$count = $1"
  count=$[ $count + 1]
  shift
done

