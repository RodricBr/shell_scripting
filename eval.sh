# Retorna a shell atual?
eval echo \$$#

# Mesma coisa?
# Substituição de variáveis não tem código associado, ela está na pilha de variáveis
echo ${!#}
#      ^^ "!" Descreve para onde o "#" aponta, que é o $0 (bash/sh/zsh... etc)
