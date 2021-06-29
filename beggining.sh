#!/usr/bin/bash
# 29/06/2021 7:00

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

# Comentário gigante
# : é um comando null para ignorar
# o que estiver ao lado direito dele
# mesmo ele sendo 'ignorado', a shell
# ainda executa ele, além dele não
# existe outro método de fazer
# comentários gigantes além desse
# o << está atribundo o : para uma
# 'variável' chamada 'FIM'
: Comentário normal
: << 'FIM'
if [ "$comando" == "-h" ]; then
	printf "\\n * Uso:\\n  # program.sh (-h) (número 1) (número 2)\\n";
else
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

# Comando de Teste, também conhecido por [ ou [[
# pode carregar operações mais complexas
#[[ -e "$file" ]] # True se o arquivo existe
#[[ -d "$file" ]] # True se o arquivo existe e é um diretório
#[[ -f "$file" ]] # True se o arquivo existe e é um arquivo regular
#[[ -z "$file" ]] # True se a string tiver comprimento = zero
#[[ -n "$file" ]] # True se a string não tiver comprimento = zero

# Comparar strings
#[[ "$str1" == "$str2" ]] # $str1 é igual a $str2
#[[ "$str1" != "$str2" ]] # $str1 é diferente da $str2

# Comparanções de inteiros
#[[ "$int1" -eq "$int2" ]] # $int1 == $int2
#[[ "$int1" -ne "$int2" ]] # $int1 != $int2
#[[ "$int1" -gt "$int2" ]] # $int1 > $int2
#[[ "$int1" -lt "$int2" ]] # $int1 < $int2
#[[ "$int1" -ge "$int2" ]] # $int1 >= $int2
#[[ "$int1" -le "$int2" ]] # $int1 <= $int2

# Nota: o [ é na verdade um comando
# [ e [[ são para operações mais abstratas
# [ e ( são mais limitados e funcionam sem o shebang
# [[ e (( só pode ser interpretado se o shebang for adicionado
# ( e (( são para operações mais matemáticas e lógica binária (bitwise)
# Consulte o "man test" para mais informações
# a respeito de expressões

# AND & OR
#if [[ "$valor1" == "$valor2"]] && [[ "$valor1" == "$valor2" ]]; then
#	echo "&& represenda AND";
#else
#	echo "|| representa OR";
#fi

# Condicionais
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

# Loopings
for (( i = 1; i <= 10; ++i )); do
	echo "$i";
done

