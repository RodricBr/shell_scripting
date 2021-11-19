#!/usr/bin/bash

read -n 1 -p "SIM OU NÃO? [Y/n]: " RESP;

## Opção 1
# ! "$RESP" =~ ^[a-zA-Z]$
#if [[ "$RESP" =~ ^[0-9]$ ]]; then
#  echo -e "\n$RESP não é uma resposta válida"
#  exit 1
#fi

## Opção 2
# Se não estiver no alfabeto...
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

