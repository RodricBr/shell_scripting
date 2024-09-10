#!/usr/bin/env bash

# This is a simple program made by me which prints the size of a given directory or file.
# It has error handling and all that fancy stuff, so I decided to add it into this repo.

# Color variables (error (red), info (green), texto (gray), fim (reset))
ERROR_="\033[38;5;161m"
INFO_="\033[38;5;47m"
TEXTO_="\033[38;5;247m"
FIM_="\033[0m"

# Defining a flag argument "-d/--directory"
case "$1" in
  -d|--directory) ANSWER_="$2" ;;
  "") ;;
  *) echo -e "\n${ERROR_}[ERROR]: Opção \"$1\" não encontrado! Saindo...${FIM_}" ; exit 1 ;;
esac

# Checking if the first command argument is empty
if [[ -z "$1" ]]; then
  echo -e "${INFO_} + Qual o disco que deseja analisar?${FIM_}"
  read -erp "$(echo -e $INFO_" >"$FIM_) " ANSWER_
  # Read includes xterm ansi colors and tab completion support
fi

# The "-e" option in the bash test condition ( "[ ]" ) which
# checks if the file exists, regardless of whether it is a directory, file, symlink, node etc..
if [ ! -e "$ANSWER_" ]; then
  echo -e "\n${ERROR_}[ERROR]: O arquivo \"$ANSWER_\" não encontrado! Saindo...${FIM_}\n"
  exit 1
fi

# Main checking function. Identifying if the input is a file or directory
# For file it'll use "stat" and for directory "du"
CHECK_SIZE(){
  if [[ ! -d "$ANSWER_" ]]; then
    local FILE_SIZE=$(
    stat -c '%s MB NN NNN+ Group/Ownership:FF %G / %U' "$ANSWER_" | sed 's/NN/\n/' |\
    sed ''/NNN/s//`printf "\033[38;5;247m"`/'' |\
    sed ''/FF/s//`printf "\033[0m"`/''
    )
    echo -e "\n${TEXTO_}\
${INFO_}>>> Information:${FIM_}${FIM_}\n \
${TEXTO_}+ File:${FIM_} $ANSWER_\n \
${TEXTO_}+ File size:${FIM_} $FILE_SIZE"
  else
    local FILE_SIZE=$(du -sh "$ANSWER_" | awk '{print $1}')
    echo -e "\n\
${INFO_}>>> Information:${FIM_}\n \
${TEXTO_}+ Directory:${FIM_} $ANSWER_\n \
${TEXTO_}+ File size:${FIM_} $FILE_SIZE\n\
$(stat -c ' NN+ Group/Ownership:FF %G / %U' "$ANSWER_" |\
sed ''/NN/s//`printf "\033[38;5;247m"`/'' |\
sed ''/FF/s//`printf "\033[0m"`/''\
)"
  # The above sed command replaces the string "NN" and "FF" with bash xterm ansi colors. (giving "+ Group/Ownership:" string a gray color)
  fi
}

CHECK_SIZE

# Unsetting varibles which were not set as local
unset ERROR_ INFO_ TEXTO_ FIM_ ANSWER_
