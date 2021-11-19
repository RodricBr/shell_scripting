#!/usr/bin/bash

read -n 1 -p "SIM OU NÃO? [Y/n]: " RESP;

## Opção 1
#if [[ "$RESP" =~ ^[0-9]$ ]]; then
#  echo -e "\n$RESP não é uma resposta válida"
#  exit 1
#fi

## Opção 2
# Só pega o que está no alfabeto (letras)
case $RESP in
  *[![:alpha:]]*) echo -e "\n$RESP não é uma resposta válida!" ;
    exit 1 ;;
esac

[[ "$RESP" != "" ]] && echo "";

if [ "$RESP" = "${RESP#[Nn]}" ]; then
  echo -e "SIM"
elif [ "$RESP" = "${RESP#^[Yy]$}" ]; then
  echo -e "NAO"
fi

