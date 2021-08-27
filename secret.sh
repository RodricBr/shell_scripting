#!/usr/bin/env bash

# Deixar com que o arquivo apenas possa ser lido/escrito por sudoers
# senão a senha fica exposta

# Exportando o arquivo 'cores.sh'
#source "./cores.sh"

: << 'FIM'
Deixar com que apenas usuários permitidos possam ler
e modificar o arquivo, para a senha não ser exibida
FIM

VERMELHO='\033[31;1m' # '\033[31m' = Vermelho ';' concatena o Vermelho com o '\033[1m' é Negrito
VERDE='\033[32;1m'    # '\033[32m' = Verde
AZUL='\033[34;1m'     # '\033[34m' = Azul
AMARELO='\033[33;1m'  # '\033[33' = Amarelo
CYANO='\033[0;36m'    # '\033[0;36m' = Cyano
FIM='\033[m'          # Reseta a cor

senha=$1
ajuda=$1
versao='1.0'

_Ajuda_(){
    echo -e "
    Modo de uso:\n \
    \t$0 <senha>\n\n \
    Comandos:\n \
    \t-h | --help    : Painel de ajuda\n \
    \t-v | --version : Versão do programa
    "
}

case $ajuda in
    "-h"|"--help") _Ajuda_
        exit 0
    ;;
    "-v"|"--versao") echo -e "\nVersão: $versao"
        exit 0
    ;;
esac

if [[ "$senha" == "r0dricbr" ]]; then
  echo -e "\n\t${VERDE}Sucesso!${FIM}\n"
  echo -e "\t${AMARELO}[V] Inicializando programa...${FIM}"
  sleep 2
  echo -e "\n\t${VERDE}[+] Bem vindo,${FIM} $USER!\n"
  while true; do
    echo -e "\n<============== ${AZUL}M${VERDE}e${AMARELO}n${CYANO}u${FIM} ==============>"
    echo -e "\n\t${VERMELHO}\
 [!] Menu de Opções:${FIM}\n\t\
 ${AZUL}1 Diretório Atual\n\t\
 2 ID do Usuário\n\t\
 3 Maior arquivo\n\t\
 4 Processos em execução\n\t\
 0 Sair da aplicação${FIM}"
    read -rp "Sua escolha: " opcao_menu #-r para evitar quebrar/bugar o código
    #du -a $opcao_dir | sort -n -r | head -n 10 #antigo
    case "$opcao_menu" in
          1) echo -e "" ; ls -la --color ; echo -e "\n${CYANO}Caminho:${FIM} " $(pwd) ;;
          2) echo -e "\n${CYANO}Info:${FIM} " $(id) ;;
          3) read -rp "Diretório: " opcao_dir ; echo -e "\n${AMARELO}Tamanho | Arquivo\n   V         V${FIM}" ; du $opcao_dir -aBM | sort -nr | head -n 10 | more ;;
          4) echo -e "" ; ps ;;
          0) echo -e "${VERMELHO}Finalizando...${FIM}" ; exit 0 ;;
    esac
    echo -e "\n<==================================>\n"
  done
else
  if [[ -z "$senha" ]]; then
    echo -e "\n\t${RED}Nenhuma senha inserida${FIM}\n"
    exit 0
  else
    if [[ "$senha" != "r0dricbr" ]]; then
      echo -e "\n\t${RED}Senha errada!${FIM}\n"
      if [[ "$USER" != "rodric" ]]; then
        echo -e "\tUsuário não autorizado\n\
        esse ato será reportado!\n
        "
        usuario=$USER
        dia_=$(date +"%d%m%y")
        touch $usuario.txt
        echo "$dia_ - Usuário: $usuario obteve acesso negado\n" >> $usuario.txt
      else
        exit 0
      fi
      #exit 0
    fi
  fi
fi
