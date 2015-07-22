#/bin/bash
# Output from a to b in multiples of 10
echo "input 2 numbers: "
read a b
# echo $a
# echo $b
for i in `seq $a $b`; do
  # echo `expr $i \* 10`
  echo $(expr $i \* 10)
done
