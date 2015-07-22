#/bin/bash
# Output in multiples of 10 within 100
for i in `seq 1 9`; do
  # echo `expr $i \* 10`
  echo $(expr $i \* 10)
done
