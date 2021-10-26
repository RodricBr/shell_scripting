#!/usr/bin/bash


PRETO=$(tput setaf 0)
VERMELHO=$(tput setaf 1)
VERDE=$(tput setaf 2)
AMARELO=$(tput setaf 3)
AZUL=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYANO=$(tput setaf 6)
BRANCO=$(tput setaf 7)
BOLD=$(tput bold)
VERMELHOBG=$(tput setab 1)
UNDER=$(tput smul)
RESET=$(tput sgr0)


echo -e "${PRETO}PRETO${RESET}"
echo -e "${VERMELHO}VERMELHO${RESET}"
echo -e "${VERDE}VERDE${RESET}"
echo -e "${AMARELO}AMARELO${RESET}"
echo -e "${AZUL}AZUL${RESET}"
echo -e "${MAGENTA}MAGENTA${RESET}"
echo -e "${CYANO}CYANO${RESET}"
echo -e "${BRANCO}BRANCO${RESET}"
echo -e "${BOLD}${VERDE}BOLD VERDE${RESET}"
echo -e "${VERMELHOBG}BACKGROUND VERMELHO${RESET}"
echo -e "${UNDER}${VERDE}UNDER VERDE${RESET}"
echo -e "${RESET}RESET${RESET}"
