#!/bin/bash

if [ $# -eq 0 ]; then
    echo "input 0 parameter."
elif [ $# -gt 1 ]; then
    echo "input more 1 parameters."
else
    echo "input only 1 parameter."
fi
