#!/bin/bash
# Test the input file whether exists.
if [ $# -ne 1 ]; then
    echo "Usage: $0 file name"
    exit 1
fi

if [ -f $1 ]; then
    echo "$1 file exists."
else
    echo "Sorry, $1 file doesn't exist."
fi
