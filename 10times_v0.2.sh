#/bin/bash
# Output from a to b in multiples of 10

function mult_10() {
  for i in `seq $1 $2`; do
    # echo `expr $i \* 10`
    echo $(expr $i \* 10)
  done
}
# echo "$#"

case "$#" in
  # 0)
  #   echo "Usage: $0 NUMBER1 NUMBER2"
  #   ;;
  # 1)
  #   echo "Usage: $0 NUMBER1 NUMBER2"
  #   ;;
  2)
    # mult_10() error! without ()
    mult_10 $1 $2
    ;;
  *)
    echo "Usage: $0 NUMBER1 NUMBER2"
    ;;
esac
