#!/bin/bash
# a simple shell script example

################################## 
# Say hello to user
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
################################## 
function say_hello() {
    echo "Enter your name: "
    read name
    echo "Hello $name"
}

################################## 
# Prints welcome
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
################################## 
print_welcome() {
    echo "Welcome, everyone!"
}

# main process
echo "Programme starts here ..."
# call the function say_hello
# Notice: without "()"
say_hello
print_welcome
echo "Programme ends."
