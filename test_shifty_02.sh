#!/bin/bash
# demonstrating the shift command
# shift it moves each parameter variable one position to the left by default.
# $1 is discarded($0,the program name, remains unchanged)
echo
echo "The original parameters: $*"
shift 2
echo "Here's the new first parameter: $1"
