#!/usr/bin/bash

pass_gen(){
  tr -dc 'a-zA-Z0-9_#@.-' < /dev/urandom | head -c ${1:-14};
  echo
}
