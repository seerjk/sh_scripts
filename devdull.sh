# stdout   1>  >
ls
# stderr   2> 
cat llkdd

# 4种等效写法：
# 只打开了一个管道
# $ sh devdull.sh > /dev/null 2>&1
# $ sh devdull.sh 1> /dev/null 2>&1
# $ sh devdull.sh 2> /dev/null >&2
# $ sh devdull.sh &> /dev/null

