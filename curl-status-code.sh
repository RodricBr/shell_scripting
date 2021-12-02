#!/usr/bin/bash

# Extrair status code de um determinado arquivo contendo URLs usando o curl APENAS!!

# Diretório contendo o arquivo:
file="/home/rodric/Desktop/ceifador/url.txt"

while IFS= read -r line; do

  # Pegando o status code
  RESP=$(curl -o /dev/null -k -s --head --write-out '%{http_code}' "${line}" --max-time 0.1 -L)

  # Se o resultado for 000 ele passa (000 == nada)
  if [[ "$RESP" == "000" ]]; then
    continue
  fi
  printf '%s ' "$line" "$RESP"; echo -e ""
done <"$file"
