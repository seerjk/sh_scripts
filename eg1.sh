#!/bin/bash
# Judge a number is a positive number or negative number

if test $1 -gt 0; then
    echo "$1 is a positive number."
else
    if test $1 -lt 0; then
        echo "$1 is a negative number."
    fi
fi
