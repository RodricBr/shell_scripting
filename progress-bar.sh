#!/usr/bin/bash

# Autor: Dotan Barak
# De: TLDP.org

BAR_WIDTH=50
#BAR_CHAR_START="["
#BAR_CHAR_END="]"
BAR_CHAR_EMPTY="▒"
BAR_CHAR_FULL="█"
BRACKET_CHARS=2
LIMIT=100

print_progress_bar(){
  # Calculate how many characters will be full
  let "full_limit = ((($1 - $BRACKET_CHARS) * $2) / $LIMIT)"

  # Calculate how many characters will be empty
  let "empty_limit = ($1 - $BRACKET_CHARS) - ${full_limit}"

  # Prepare the bar
  bar_line="${BAR_CHAR_START}"
  for ((j=0; j<full_limit; j++)); do
    bar_line="${bar_line}${BAR_CHAR_FULL}"
  done

  for ((j=0; j<empty_limit; j++)); do
    bar_line="${bar_line}${BAR_CHAR_EMPTY}"
  done

  bar_line="${bar_line}${BAR_CHAR_END}"
  printf "%3d%% %s" $2 ${bar_line}
}

TEMPO="$1"
echo -e "Tempo $TEMPO s"

# Here is a sample of code that uses it
MAX_PERCENT=100
for ((i=0; i<=MAX_PERCENT; i++)); do
  sleep "$TEMPO" 2>/dev/null
  print_progress_bar ${BAR_WIDTH} ${i}
  echo -en "\r" # A magia acontece aqui, impedindo quebra de linha
done

exit
