#!/usr/bin/env bash

VERMELHO='\033[31;1m' # '\033[31m' = Vermelho ';' concatena o Vermelho com o '\033[1m' é Negrito
VERDE='\033[32;1m' # '\033[32m' = Verde
AZUL='\033[34;1m' # '\033[34m' = Azul
AMARELO='\033[33;1m' # '\033[33' = Amarelo
CYANO='\033[0;36m' # '\033[0;36m' = Cyano
FIM='\033[m' # Reseta a cor

senha=$1

if [[ "$senha" == "r0dricbr" ]]; then
  echo -e "\n\t${VERDE}Sucesso!${FIM}\n"
  echo -e "\t${AMARELO}[V] Inicializando programa...${FIM}"
  sleep 2
  echo -e "\n\t${VERDE}[+] Bem vindo,${FIM} $USER!\n"
  while true; do
    echo -e "\n<============== Menu ==============>"
    echo -e "\n\t${VERMELHO}[!] Menu de Opções:${FIM}\n\t ${AZUL}1 Diretório Atual\n\t 2 ID do Usuário\n\t 0 Sair da aplicação${FIM}"
    read -p "Sua escolha: " opcao_menu
    echo ""
    case "$opcao_menu" in
          1) ls -la --color ; echo -e "\n${CYANO}Caminho:${FIM} " $(pwd) ;;
          2) echo -e "\t${CYANO}Info:${FIM} " $(id) ;;
          0) echo -e "${VERMELHO}Finalizando...${FIM}" ; exit 0 ;;
    esac
  done
else
  if [[ -z "$senha" ]]; then
    echo -e "\n\t${RED}Nenhuma senha inserida${FIM}\n"
    exit 0
  else
    if [[ "$senha" != "r0dricbr" ]]; then
      echo -e "\n\t${REd}Senha errada!${FIM}\n"
      exit 0
    fi
  fi
fi
