#!/usr/bin/env bash
# https://meleu.sh/urlencode/

function ENCODE_(){
  local LC_ALL="C" # Informando ao shell que queremos utilizar configurações de Unix "original"
  local ARGS_="$*" # Todos os argumentos ($*) ; (Argumentos)
  local CUMPR_="${#ARGS_}" # Número de caracteres presente na variável ARGS_ ; (Cumprimento)
  local STR_ # Será usada mais tarde para analisar cada caractere de ARGS_ no loop. ; (String)

  for ((X = 0; X < CUMPR_; X++)); do
    STR_="${ARGS_:X:1}" # ${ARGS_:PosiçãoInicial:NúmeroDeCaracteres}
                        # A cada iteração do loop, estaremos testando apenas 1 caractere da string.
    [[ "$STR_" == [a-zA-Z0-9.~_-] ]]&& printf "$STR_" || printf '%%%02X' "'$STR_"
    # O if serve para checarmos se o caractere é válido para urls.
    # O LC_ALL=C será util nessa parte. A lista de caracteres válidos para url são dígitos
    # de "0" a "9", letras maiúsculas e minúsculas de "A" a "Z", traço "-", ponto ".", sublinhado "_",
    # e til "~". Escrevendo esse padrão para bash temos o regex "[a-zA-Z0-9.~_-]"

    # Se (&&) o caractere for válido com base nesse regex, simplesmente imprime no stdout, se não for (||)
    # executaremos o printf. Explicação dele abaixo:

    # A sequência "%%%02X" significa:
    # "%%"   :: um "%" sinal de percentual literal
    # "%02X" :: Formato hexadecimal, usando letras maiúsculas para "A-F", com dois dígitos e
    # precedido de "0" se for necessário.

    # O argumento "'$STR_" tem uma pequena aspas simples no começo (sem um fechamento), ela serve
    # para que possamos passar o valor ASCII numérico do caractere que vem a seguir
    #$printf "%d" "a" == Erro
    #$printf "%d" "'a" == sucesso + "a" em decimal na tabela ASCII, que é "97"

    # O LC_ALL é essencial nessa etapa
  done
  printf "\n"
}

ENCODE_ "$@"
