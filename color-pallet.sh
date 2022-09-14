# Paleta de cores / Color Pallet (One-Line)
# Da cor 0 até a 255
AAA=$(printf "%124s"); echo ${AAA// /─}; for X in {0..255}; do printf "│\x1b[38;5;${X}mcolor%-5i\x1b[0m│\t" $X; if ! (( ($X + 1) % 8)); then echo; fi; done; AAA=$(printf "%124s"); echo ${AAA// /─}



# Identado bonitinho: (With indentation)

# Repetição de strings:
REPETI_=$(printf "%124s")
echo ${REPETI_// /─}

for X in {0..255}; do
  printf "│\x1b[38;5;${X}mcolor%-5i\x1b[0m│\t" $X
  if ! (( ($X + 1) % 8)); then
    echo
  fi
done
echo ${REPETI_// /─}

# Ou simplesmente: (Or simply...)
#for X in {1..124}; do echo -n '─'; done


# Printar todas as 256 cores do TPUT no terminal / Print all 256 tput colors in the terminal
for X in {0..255}; do tput setaf $X; tput setaf $X | cat -v; echo =$X; done

# De umaiie visible way:
for X in {0..255}; do tput setaf "$X"; tput setaf $X | cat -v; echo -e "=$X \r█ \t\t █"; done
