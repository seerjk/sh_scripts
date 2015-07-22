#!/bin/bash
# whether the user logined.

################################## 
# whether user logined 
# Globals:
#   None
# Arguments:
#   $1 user_name 
# Returns:
#   None
################################## 
function if_login() {
  if who | grep -q $1; then
    echo "$1 logined."
  else
    echo "$1 didn't login."
  fi
}

# main process
case "$#" in
  1)
    if_login $1
    ;;
  *)
    echo "Usage: $0 USER_NAME"
    ;;
esac
