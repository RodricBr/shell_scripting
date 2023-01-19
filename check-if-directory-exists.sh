#!/usr/bin/env bash

 # Trying to cd(change directory) to aaaa, if it doesn't exist (returns error), echo... (throwing all the output and error to null)
 # Works really well, visually simple and it's really fast
 cd "aaaa" &>/dev/null || { echo "Error: directory not found." ; }
 
 # If "aaaa" is a file (-f) returns something (using && instead of || in this case would be if it existed)
 # In this case, "||" will echo only if the exit code is not 0
 [ -f "aaaa" ]|| echo "doesn't exist"
