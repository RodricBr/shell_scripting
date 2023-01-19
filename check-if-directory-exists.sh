#!/usr/bin/env bash

 # Trying to cd(change directory) to aaaa, if it doesn't exist (returns error), echo... (throwing all the output and error to null)
 # Works really well - since it's a builtin -, visually simple and it's really fast
 # As you already know, "||" is the "OR" operator. It executes our "echo" message on the right only if "cd" returned an error (exit code != 0)
 cd "aaaa" &>/dev/null || { echo "Error: directory not found." ; }
 
 # If "aaaa" is a directory (-d) returns something (using && instead of || in this case would be if it existed)
 # In this case, "||" will echo only if the exit code is not 0
 [ -d "aaaa" ]|| echo "Doesn't exist"
 [ -d "aaaa" ]&& echo "Exists" || echo "Doesn't exist"
