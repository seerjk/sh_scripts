#!/bin/bash
# to judge ./data whether exists
f_name="/etc/data"
if [ -f $f_name ]; then
  echo "$f_name file exists."
else
  echo "$f_name donot exist."
fi
