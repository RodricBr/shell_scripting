#!/usr/bin/bash

argumento1=$1
versao='1.0'

_Ajuda_(){
        printf "\
        \nNAME\n \
        \t$0 - Exemplo de texto\n \
        \nSYNOPSIS\n \
        \t$0 [Ex1] [Ex2]\n \
        \nDescrição\n \
        \tO $0 é usado para demonstrar o exemplo\n \
        \tMais exemplos\n \
        \nOpções\n \
        \t-h, --help\n \
        \t\tMostra como usar o programa\n\n \
        \t-f,--file\n \
        \t\tProcura um arquivo\n\n \
        \t\tEx: $0 -f file.txt\n\n"
}

case $argumento1 in
        "-v"|"--version") printf "\nVersion: $versao"
                exit 0
        ;;
        "-h"|"--help") _Ajuda_
                exit 0
        ;;
esac
