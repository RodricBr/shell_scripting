#!/usr/bin/env bash

SEASONS_(){
  HOJE=$(date +%m%d)

  # MMDD (monthj e day)
  INICIO_OUTONO=0320
  INICIO_INVERNO=0621
  INICIO_PRIMAVERA=0922
  INICIO_VERAO=1221
  
  # Matching the season with emojis. Fall, winter, spring and summer
  if [[ "$HOJE" -ge "$INICIO_OUTONO" && "$HOJE" -lt "$INICIO_INVERNO" ]]; then
    ESTACAO="🍁"
  elif [[ "$HOJE" -ge "$INICIO_INVERNO" && "$HOJE" -lt "$INICIO_PRIMAVERA" ]]; then
    ESTACAO="❄️"
  elif [[ "$HOJE" -ge "$INICIO_PRIMAVERA" && "$HOJE" -lt "$INICIO_VERAO" ]]; then
    ESTACAO="🌼"
  else
    ESTACAO="☀️"
  fi
  
  # Output format. date - season
  DATA="$(date +%d/%m) - "
  TEXTO="${DATA}${ESTACAO}"
  
  # Getting the width of the terminal
  COLS=$(tput cols)
  ROWS=$(tput lines)
  
  # Avoiding the emoji from breaking the string since it occupies 2 spaces
  LARGURA_VISUAL=$(( ${#DATA} + 2 ))
  
  COL_POS=$(( COLS - LARGURA_VISUAL ))
  ROW_POS=$(( ROWS - 1 ))
  
  # Adjusting the string
  tput cup $ROW_POS $COL_POS
  echo -n "$TEXTO"
}

# You can then call the function and put it right next to another string, for example, in your bashrc banner:
echo -e ".--[[ Sample Banner ]]--."
echo -ne "> start-server, commands, etc" ; SEASONS_ ; echo ""
# the last echo "" breaks the line since we remove new line in echo -n
