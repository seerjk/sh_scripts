#!/bin/bash
clear
while true; do
  echo "------------------------------------"
  echo "--------------Tools-----------------"
  echo "1. Free space of disk."
  echo "2. Who logined?"
  echo "3. Print current directory tree."
  echo "4. Exit. "
  echo "------------------------------------"
  echo -n "choice: "
  read choice
  # clear
  
  case $choice in
    1)
      df -h
      ;;
    2)
      w
      ;;
    3)
      tree -a .  
      ;;
    4)
      exit 0
      ;;
    *)
      echo "Invalid input!!!"
      ;;
  esac
done
