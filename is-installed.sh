#!/usr/bin/env bash

# Colors variable for green and red
VERDE="\033[38;5;10m"
VERME="\033[38;5;196m"
FIM="\033[00m"

function IS_INSTALLED(){
  printf "+----------------------------------------+\n"
  # Variable with the programs to be tested:
  local INSTALADOS_=(xargs curl httpx wget unzip subfinder git)
  local i=0; n=0
  for X in "${INSTALADOS_[@]}"; do
    if hash "$X" &>/dev/null; then
      echo -e "${VERDE}* Installed:${FIM} $X ✅"
      let c++
    else
      echo -e "${VERME}* Error:${FIM} $X in not installed!"
      let n++
    fi
  done
  # If one not installed program is found, halt and exit program with exit code 1
  if [ "$n" != "0" ]; then
    printf "\n${VERME}%d of %d programs are missing! \nQuitting...${FIM}\n" "$n" "${#INSTALADOS_[@]}"
    printf "+----------------------------------------+\n"
    exit 1
  else
    printf "\n${VERDE}All %d programs are installed! \nContinuing...${FIM}\n" "${#INSTALADOS_[@]}"
  fi
  printf "+----------------------------------------+\n"
}
IS_INSTALLED
