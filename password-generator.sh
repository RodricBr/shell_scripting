#!/usr/bin/bash

PASS_G(){
  tr -dc 'a-zA-Z0-9_#@.-' < /dev/urandom | head -c ${1:-14};
  echo
}
PASS_G

# Ou simplesmente / Or simply:

PASS_G(){ tr -dc 'a-zA-Z0-9_#@.-' < /dev/urandom | head -c "${1:-14}"; echo;} && PASS_G


# Ou exemplo interessante / Another cool example

for ((;;)); do echo -ne "PASSWORD: $(tr -dc 'a-zA-Z0-9_#@.-' < /dev/urandom | head -c ${1:-14})\n"; done
