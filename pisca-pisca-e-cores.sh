#!/usr/bin/bash

#### Texto com cor que fica piscando
#### Funciona apenas para xterm

# Especificações de texto com cor no BASH:  \e[<ESTILO>;<COR>m
# (Nota: \e == BASH || \033 == OCT || \x1b == HEX || 27 DEC )
# Estilos:  0=normal, 1=negrito, 2=escurecido, 4=sublinhado, 5=piscando(xterm), 7=destacado
# Cores: 31=red, 32=green, 33=yellow, 34=blue, 35=purple, 36=cyan, 37=white

# Branco
echo -e "\033[37;5mRodricBr\033[0m"

# Ciano
echo -e "\033[36;5mRodricBr\033[0m"

# Magenta
echo -e "\033[35;5mRodricBr\033[0m"

# Azul
echo -e "\033[34;5mRodricBr\033[0m"

# Amarelo
echo -e "\033[33;5mRodricBr\033[0m"

# Verde
echo -e "\033[32;5mRodricBr\033[0m"

# Vermelho
echo -e "\033[31;5mRodricBr\033[0m"

# Preto
echo -e "\033[30;5mRodricBr\033[0m"


#### Diferenciados + Explicação
#                    Texto        Resetar cores
# Itálico piscando   VVVVVVVV     V
echo -e "\033[33;3;5mRodricBr\033[0m"
#             ^^ ^ ^
#             |  | Piscar
#             |  |
#            Cor Itálico

# Negrito piscando
echo -e "\033[33;2;5mRodricBr\033[0m"

# Underline piscando
echo -e "\033[33;4;5mRodricBr\033[0m"

# Background fixo e texto piscando
echo -e "\033[33;7;5mRodricBr\033[0m"

# Riscado piscando
echo -e "\033[33;9;5mRodricBr\033[0m"

#### KDE-Konsole suporta o 5; mas o Gnome-Terminal não suporta
#### Dependendo do tipo de sistema, ele vai ser diferente!

# 3; Itálico
# 4; Sublinhado
# 5; Piscando (devagar)
# 6; Piscando (rápido)
# 7; Background/Reverso
# 8; Escondido
# 9; Riscado

# Para mais informações com mais detalhes:
# https://stackoverflow.com/a/28938235
