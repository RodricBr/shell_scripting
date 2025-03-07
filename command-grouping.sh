#!/usr/bin/bash

# Function 1 with a simple echo
function call_function1 {
  echo "Function 1"
}

# Function 2 with a simple echo
function call_function2 {
  echo "Function 2"
}

# Calling both functions and throwing their respective
# outputs to a file named all_functions.txt
{
call_function1
call_function2
} | tee "all_functions.txt"

# Instead piping the output to "tee" we could simply use ">" or ">>" if the user wants
# to append content to the output file. It would look something like this:
# { ... } > "all_functions.txt"    OR:    { ... } >> "all_functions.txt"
