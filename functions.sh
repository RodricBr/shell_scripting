# Printa cada palavra em uma linha
palavras(){ for WORD_; do echo "$WORD_"; done; }

# Resultado
$ palavras Um Dois Tres
Um
Dois
Tres

# Exibindo o conteúdo da função que acabamos de definir
$ declare -f palavras

#############################################################################################################################################################

# Um detalhe interessante sobre funções no bash.
# Quando declaramos uma função utilizando "function" o bash interpretará a string a seguir como o nome da função
# Dessa forma:
function NomeDaFuncao {  }

# Note que não é necessário utilizar os parentesis, pois estamos especificamente dizendo ao shell que "NomeDaFuncao" será uma função.
# Esse é um método "outdated", não é ideal utiliza-lo nos tempos atuais do bash

# Funções nos tempos atuais:
NomeDaFuncao(){  }

# Note que dessa vez foi necessário o uso dos parentesis, ele é importante pois informa ao bash que estamos tratando de uma função.
# Caso contrário, ele irá interpretar os "{}" como brace expansion, e retornará com erro.

# Podemos testar isso dessa forma:
NomeDaFuncao(){ echo a; }; NomeDaFuncao # Correto e com os parentesis
NomeDaFuncao{ echo a; }; NomeDaFuncao # Errado e sem os parentesis

function NomeDaFuncao { echo a; }; NomeDaFuncao # Correto sem os parentesis
function NomeDaFuncao(){ echo a; }; NomeDaFuncao # Correto com os parentesis

# Bonus
# Exibir todas as funções definidas no sistemas. (As criadas pelo usuário estarão no topo)
$ declare -F
declare -f ARREDONDA_ # output...
declare -f FUNCAO
declare -f NomeDaFuncao
