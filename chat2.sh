#!/usr/bin/bash
# One liner do baguio:
#while :; do read -ep $'\n>> ' resposta; printf "<< $resposta\n"; [[ "$resposta" == "sair" ]] && exit 0; done
while :; do
  read -ep $'\n>> ' resposta
  printf "<< $resposta\n"
  [[ "$resposta" == "sair" ]] && 
    exit 0
done
