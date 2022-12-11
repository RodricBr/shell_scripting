# Definir cores em sua sessão no terminal é apenas temporário.
# Às vezes, o efeito dura algumas linhas; isso ocorre porque esse método de definir cores depende de uma instrução "printf" para definir
# um modo que dura apenas até que algo o substitua.
# A maneira como um emulador de terminal geralmente obtém instruções sobre quais cores usar é
# a partir das configurações da variável de ambiente "LS_COLORS", que por sua vez é preenchida pelas configurações de dircolors.
$ echo $LS_COLORS | tr ':' '\n'

OU

$ dircolors --print-database

# Nossa distro provavelmente define o "LS_COLORS" globalmente, então todos os usuários em seu sistema herdam as mesmas cores.
# Se quisermos um conjunto personalizado de cores, podemos usar o "dircolors".

# Primeiro, gere uma cópia local das configurações de cores do dircolors:
$ dircolors --print-database > ~/.dircolors
