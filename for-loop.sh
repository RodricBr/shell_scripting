#!/usr/bin/env bash

# ";" and ";" are command separators, and in this case since they're separating nothing from nothing, then it means that it'll create an infinite loop
# just like what happens when we use "while :;" (while true(:)...).
for ((; ;)); do
  echo -e "Teste"
done
