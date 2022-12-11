# Definir cores em sua sessão no terminal é apenas temporário.
# Às vezes, o efeito dura algumas linhas; isso ocorre porque esse método de definir cores depende de uma instrução "printf" para definir
# um modo que dura apenas até que algo o substitua.
# A maneira como um emulador de terminal geralmente obtém instruções sobre quais cores usar é
# a partir das configurações da variável de ambiente "LS_COLORS", que por sua vez é preenchida pelas configurações de dircolors.
$ echo $LS_COLORS | tr ':' '\n'

OU

$ dircolors --print-database


