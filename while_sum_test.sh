#!/bin/bash
# sum: from 1 to 100
i=1
sum=100
while [ $i -le 100 ]; do
  sum=$[$sum+$i]
  i=$[$i+1]
done

echo "Summary: $sum"
