#!/usr/bin/bash

VERMELHO='\033[31;1m'
VERDE='\033[32;1m'
AMARELO='\033[33;1m'
FIM='\033[m'

banner_(){
  echo -e "${VERDE}
  ######  ##     ##  ######     ###    ##    ##
 ##    ## ##     ## ##    ##   ## ##   ###   ##
 ##       ##     ## ##        ##   ##  ####  ##
  ######  ######### ##       ##     ## ## ## ##
       ## ##     ## ##       ######### ##  ####
 ##    ## ##     ## ##    ## ##     ## ##   ###
  ######  ##     ##  ######  ##     ## ##    ##${FIM}\n\tnmap basic scanner\n\n"
}

if [[ -z "$*" ]] || [[ "$*" == -h ]]; then # usando o * ao invés de @
  echo -e "\n${AMARELO}Como usar:${FIM}
\t$0 -h   : Modo de uso
\t$0 <IP/Domnínio> <Range de portas> <-A (Agressivo) | -P (Passivo)>\n\
\tEx: $0 192.168.1.4 80-443\n\
\tIdentificações: Portas, serviços, sistemas operacionais
  "
  if [[ -n $(command -v nmap) ]]; then
      echo -e "${VERDE}NMAP instalado!${FIM}"
      echo -e "${VERDE}Versão:${FIM} $(nmap --version)"
      exit 0
  else
      echo -e "${VERMELHO}NMAP não encontrado!${FIM}"
      echo -e "Para baixar, execute esse comando:"
      echo -e "sudo apt-get install nmap\n"
      exit 1
  fi
fi

if [[ -n "$1" ]] || [[ "${*: -1}" == "A" ]]; then # Usando -n ao invés de ! -z
  banner_
  nmap -Pn -sV --version-intensity 5 -p "$2" "$1"
elif "${*: -1}" == "P"; then # @: 1 == último caractere
  nmap -Pn -sV --version-intensity 2 -p "$2" "$1"
fi

# Agressivo:
# nmap -Pn -sV --version-intensity 5 -p $2 $1

# Passivo:
# nmap -Pn -sV --version-intensity 0 -p $2 $1
#
