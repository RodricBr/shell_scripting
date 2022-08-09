#!/usr/bin/bash

# Checando se o IPv4 é válido através de regex (expressão regular)
# ((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])

if [[ "$1" =~ ^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])$ ]]; then
  echo -e "O IPv4 \"$1\" é um IP válido!\n"
  exit 0
elif [[ -z "$1" ]] ; then
  echo -e "Erro: Insira um IPv4 no primeiro parâmetro/argumento!\n"
  exit 2
else
  echo -e "Erro: O IPv4 \"$1\" é inválido!\n"
  exit 2
fi
