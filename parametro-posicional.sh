#!/usr/bin/bash

# $* == Todos os parâmetros posicionais são vistos como strings únicas
# $# == Número de argumentos da linha do comando
# $@ == Cada parâmetro é listado como uma string separada

# Número de parâmetros errados passado no script
badargs=65

# Se o argumento inicial '1' for zero '-z'...
if [[ -z "$1" ]]; then
        echo "Como usar: $(basename "$0") argumento1, argumento2, argumento3, etc..."
        exit $badargs
fi

echo

# Incicializa a contagem
index=1

echo "Listando os args usando: \"\$*\":"

for arg in "$*"; do
        echo "Arg número $index = $arg"
        let "index+=1"
done

echo "Lista inteira de argumentos vista como uma única palavra"

echo

index=1

echo "Listando os args usando: \"\$@\":"
for arg in "$@"; do
        echo "Arg número $index = $arg"
        let "index+=1"
done

echo "Lista de argumentos vista como palavras separadas"

echo

# Reseta o contador
index=1

echo "Listando os args usando: \$* (sem aspas):"

# O $* sem aspas vê os argumentos como strings separadas
for arg in $*; do
        echo "Arg número $index = $arg"
        let "index+=1"
done

echo "Lista de argumentos vista como palavras separadas"

exit 0
