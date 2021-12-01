#!/usr/bin/bash

# ================= #
# Criado 27/07/2021 #
# ================= #

# ================ #
# Variáveis de Cor #
# ================ #

RED='\033[31;1m' # \033[31m = Vermelho ';' concatena o Vermelho com o \033[1m que é Negrito
GREEN='\033[32;1m' # \033[32m = Verde
BLUE='\033[34;1m' # \033[34m = Azul
YELLOW='\033[33;1m' # \033[33 = Amarelo
END='\033[m' # Reseta a cor


# $* == Todos os parâmetros posicionais são vistos como strings únicas
# $# == Número de argumentos da linha do comando
# $@ == Cada parâmetro é listado como uma string separada

# Número de parâmetros errados passado no script
badargs=65

# Para fazer: Tentar não quebrar o código no stdin usando aspas simples e duplas

# Se o argumento inicial '1' for zero '-z'...
# $(basename "$0") = nome de um arquivo dado (Param 1 é o nome do programa)
if [[ -z "$1" ]]; then
	echo -e "\n${GREEN}Como usar:${END}${BLUE} $(basename "$0") argumento1, argumento2, argumento3, etc...${END}\n"
	exit $badargs
fi

# Incicializa a contagem
index=1

echo -e "\n#---------------------------------------------------------------#\n"

# \* == Output: *
# "\*" == Output: \*
# "\$" == Output: $
# \" String[\$*] \"
printf "\t${YELLOW}Listando os args usando:${END} \"\$*\":\n"

for arg in "$*"; do
	echo -e "\t${RED}Arg número${END} $index = $arg"
	let "index+=1"
done

printf "\n\t${GREEN}Lista inteira de argumentos vista como uma única palavra${END}\n"
echo -e "\n#---------------------------------------------------------------#\n"

# Reseta o contador
index=1

printf "\t${YELLOW}Listando os args usando:${END} \"\$@\":\n"
for arg in "$@"; do
	echo -e "\t${RED}Arg número${END} $index = $arg"
	let "index+=1"
done

printf "\n\t${GREEN}Lista de argumentos vista como palavras separadas${END}\n"
echo -e "\n#---------------------------------------------------------------#\n"

# Reseta o contador
index=1

printf "\t${YELLOW}Listando os args usando:${END} \$* (sem aspas):\n"

# O $* sem aspas vê os argumentos como strings separadas
for arg in $*; do
	echo -e "\t${RED}Arg número${END} $index = $arg"
	let "index+=1"
done

printf "\n\t${GREEN}Lista de argumentos vista como palavras separadas${END}\n"
echo -e "\n#---------------------------------------------------------------#\n"

exit 0

