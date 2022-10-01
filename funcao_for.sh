# Printa cada palavra em uma linha
palavras(){ for WORD_; do echo "$WORD_"; done; }

# Resultado
$ palavras Um Dois Tres
Um
Dois
Tres

# declare -f palavras
