#!/usr/bin/bash

# Variável com opções que serão chamadas dentro do
# loop SELECT & dentro do CASE
opcoes=("teste0" "teste1" "teste2" "teste3" "sair")

# Selecionando argumentos da variável "opcoes" guardado em uma lista(@) de string
select opt in "${opcoes[@]}"; do
  case $opt in
    "teste0") echo -e "\n\n\c"; echo -e "Primeira opção!" ;;
    "teste1") echo -e "Segundo opção!" ;;
    "teste2") echo -e "Terceira opção!" ;;
    "teste3") echo -e "Quarta e Ultima opção!" ;;
    "sair") echo -e "Saindo"; break ;; # BREAK finaliza o loop emitido pelo SELECT
    *) echo "Invalido" ;;
  esac
done
