#!/usr/bin/bash

read -n 1 -p "SIM OU NÃO? [Y/n]: " RESP;

[ "$RESP" != "" ] && echo "";

if [ "$RESP" = "${RESP#[Nn]}" ]; then
  echo -e "SIM"
elif [ "$RESP" = "${RESP#^[Yy]$}" ]; then
  echo -e "NAO"
fi
