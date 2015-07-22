#!/bin/bash
# change name in ./tmp/
# *.txt --> *.doc
cd /home/jiangk/sh_scripts/tmp
echo "current dir: `pwd`"
# for file in *; do
#   echo $file
# done

for file in *.txt; do
  # if `echo $file` | grep '\btxt$'; then
    # mv $file "`basename $file txt`.doc"
    # echo $file
  # fi
  # echo $file
  leftname=`basename $file .txt`
  mv $file $leftname.doc
  # mv $file "`basename $file .txt`.doc"
done

echo `ls *.doc`
