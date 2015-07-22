#!/bin/bash

case "$#" in
  0)
    echo "input 0 parameter."
    ;;
  1)
    echo "input 1 parameter."
    ;;
  *)
    echo "input more than 1 parameters."
    ;;
esac
