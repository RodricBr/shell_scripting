# Retorna a shell atual?
eval echo \$$#

# Mesma coisa?
# Substituição de variáveis não tem código associado, ela está na pilha de variáveis
echo ${!#}
