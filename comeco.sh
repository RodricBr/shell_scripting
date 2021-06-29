#!/usr/bin/bash

### 29/06/2021
## Executando comandos dentro do VIM ##

# Dentro do modo de comando(ESC)
# :read ! which bash
# output: /usr/bin/bash
# O comando "read" insere o output
# do comando seguinte, no caso 
# "which" para saber em qual
# "bash" estamos.
# "!" = concatenar
comando=$1
valor1=$2
valor2=$3

## Comentário gigante (here-document)
# : é um comando null para ignorar
# o que estiver ao lado direito dele
# mesmo ele sendo 'ignorado', a shell
# ainda executa ele, além dele não
# existe outro método de fazer
# comentários gigantes além desse
# o << está atribundo o : para uma
# 'variável' ou um marcador chamado 'FIM'
: Comentário normal
: << 'FIM'

case $comando in verifica
	-h) echo "\\n * Uso:\\n  # program.sh (-h) (número 1) (número 2)\\n";;
	--help) echo "\\n * Uso:\\n  # program.sh (-h) (número 1) (número 2)\\n";;
esac


#if [ "$comando" == "-h" ]; then
#	printf "\\n * Uso:\\n  # program.sh (-h) (número 1) (número 2)\\n";
#else
#	verifica
#fi

if [ -z "$comando" ] && [ -z "$valor1" ] && [ -z "$valor2" ]; then
	verifica
fi

printf "\\nExecutando: $0";
printf "\\n";

if [[ "$valor1" -gt 5 ]]; then
	echo "O valor '$valor1' é maior que 5";
	exit 0
fi
if [[ -z "$valor1" || "$valor2" ]]; then
	exit 1
else
	:
fi

if [[ "$valor1" -eq "$valor2" ]]; then
	echo "O valor '$valor1' é igual ao '$valor2'";
else
	echo "Os valores são diferentes"
	exit 0
fi
FIM
# Fim do comentário gigante

# Verifica se o usuário não passou nenhum argumento (-z)
function verifica() {
if [[ -z "$comando" || "$valor1" || "$valor2" ]]; then
	printf "Nenhum argumento passado!\\nTente novamente executando o comando -h\\n";
	exit 0
elif [[ -n "$valor1" || -n "$valor2" ]]; then
	echo "valores nulos";
	# O ":" significa não fazer nada a partir desse ponto
	# :
else
	exit 1
fi
}
#printf "\\nExecutando: $0";
#printf "\\n";
#
#if [[ "$valor1" -gt 5 ]]; then
#	echo "O valor $valor1 é maior que 5";
#fi
#
#if [[ "$valor1" -eq "$valor2" ]]; then
#	echo "O valor $valor1 é igual ao $valor2";
#else
#	echo "Os valores são diferentes"
#fi

# O ":" significa não fazer nada a partir desse ponto 

#if [ "$comando" == "-h" ]; then
#	printf "\\n  * Uso:\\n\\t# program.sh (-h) (número 1) (número 2)\\n";
#fi

## Comando de Teste, também conhecido por [ ou [[
# pode carregar operações mais complexas
#[[ -e "$file" ]] # True se o arquivo existe
#[[ -d "$file" ]] # True se o arquivo existe e é um diretório
#[[ -f "$file" ]] # True se o arquivo existe e é um arquivo regular
#[[ -z "$file" ]] # True se a string tiver comprimento = zero
#[[ -n "$file" ]] # True se a string não tiver comprimento = zero

## Comparar strings
#[[ "$str1" == "$str2" ]] # $str1 é igual a $str2
#[[ "$str1" != "$str2" ]] # $str1 é diferente da $str2

## Comparanções de inteiros
#[[ "$int1" -eq "$int2" ]] # $int1 == $int2
#[[ "$int1" -ne "$int2" ]] # $int1 != $int2
#[[ "$int1" -gt "$int2" ]] # $int1 > $int2
#[[ "$int1" -lt "$int2" ]] # $int1 < $int2
#[[ "$int1" -ge "$int2" ]] # $int1 >= $int2
#[[ "$int1" -le "$int2" ]] # $int1 <= $int2

# Nota 1: o [ é na verdade um comando
# [ e [[ são para operações mais abstratas
# [ e ( são mais limitados e funcionam sem o shebang
# [[ e (( só pode ser interpretado se o shebang for adicionado
# ( e (( são para operações mais matemáticas e lógica binária (bitwise)
# Consulte o "man test" para mais informações
# a respeito de expressões

# Nota 2: o ; e o & representam o
# fim de um comando, o ; representa
# uma nova linha
# o ;; somente é usada em case
# constructs para indicar o fim de uma
# alternativa, parecido com o 'break' no C

## AND & OR
#if [[ "$valor1" == "$valor2"]] && [[ "$valor1" == "$valor2" ]]; then
#	echo "&& represenda AND";
#else
#	echo "|| representa OR";
#fi

## Condicionais
# 1. Retornar valores
# Se o arquivo nota.md não existe,
# cria uma e adiciona o texto "criado pelo bash"
#if find nota.md then
#	echo "nota.md já existe no sistema";
#else
#	echo "criado pelo bash" | cat >> nota.md
#fi

# 2. Avaliações aritimética
#read -pr "Digite seu idade: " idade

#if (( "$idade" > 18 )); then
#	echo "Você é um adulto!"
#elif (( "$idade" > 12 ));
#then
#	echo "Você é um adolescente!";
#else
#	echo "Criança! saia daqui!";
#fi

# 3. Expressões de teste
# Verifica se o argumento foi aprovado
# $1 corresponde ao primeiro argumento
#if [[ -n "$1" ]]; then
#	echo "Seu primeiro argumento foi $1";
#else
#	echo "Nenhum argumento aprovado";
#fi

## Utilizando o case!
resposta=$1
# Se o usuário digitar 'sim'
# no primeiro argumento,
# printa 'yay!'
case $resposta in
	sim) echo "yay!";;
	nao) echo "noo!";;
esac

## Loopings For
# Loop parecido com o C
#for (( i = 1; i <= 10; ++i )); do
#	echo "$i";
#done

# Printa o primeiro argumento dez vezes
#for i in {1..10}; do
#	echo "$1"
#done

## Loopings While

#i=1

# Se o argumento 1 for diferente(-ne)
# de 10, vai fazer um loop infinito
# cuidado com isso pra n crashar o pc

#while [[ "$1" -ne 10 ]]; do
#	echo "$i"
#	((i++))
#done

## Loopings Until

#i=1

#until [[ "$1" -eq 10 ]]; do
#	echo "hi"
#	echo "until $1"
#	((i++))
#done

## Arrays
# Os arrays são definidos com
# parentesis( e ) e não precisam
# de vírgulas para separar os elementos

#array=(a b c d e f);

# For in

# A arroba(@) ou asterisco(*)
# representam todos os elementos
# dentro da array
#for i in "${array[@]}"; do
#	echo "$i"
#done

# For parecido com C

# A cerquilha(#) é para saber
# o tamanho da array

#echo "Minha array tem ${#array[@]} itens";

# ${array[@]} permite iterar(repetir)
# com em uma array enquanto o
# ${#array[@]} retorna o tamanho da array
#for (( i = 0; i < "${#array[@]}"; i++ )); do
#	echo "${array[$i]}"
#done

## Arrays (Read)

array=(s h e l l c o d e);

echo "${array[*]}"; # Lê todos os elementos
echo "${array[0]}"; # Lê o primeiro elemento
echo "${array[-1]}"; # Lê o último elemento
echo "${array[@]:1}"; # Lê os elementos a partir da posição 1 
echo "${array[*]:1:4}"; # Lê os elementos a partir da posição 1 para o 4

## Arrays (Insert)
# Editar, incluir ou remover

# Editar
array[5]='K'; # Edita um 'K' para a posição 5 do array
# o 'C' vira um 'K'

# Incluir
array[9]='NULO'; # Adicionando string 'NULO' para a posição 9
# a posição 9 passa a existir apartir desse comando

# O bash irá declarar um array sempre que usarmos
# uma variável com esta sintáxe:
array[999]="Teste";

# Remover

unset array[999]; # Indique o índice de um elemento para remover
unset array[9]; # Indique o índice de um elemento para remover


array=("${array[@]:0:1}" 'OLA' "${array[@]:1}") # Adicionando 'OLA' para o array
# da posição 0 para 1, e da posição 1(no meio do S e H )
echo "${array[@]}";



