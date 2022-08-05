# Paleta de cores
# Da cor 0 até a 255
AAA=$(printf "%124s"); echo ${AAA// /─}; for X in {0..255}; do printf "│\x1b[38;5;${X}mcolor%-5i\x1b[0m│\t" $X; if ! (( ($X + 1) % 8)); then echo; fi; done; AAA=$(printf "%124s"); echo ${AAA// /─}



# Identado bonitinho:

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

# Ou simplesmente:
#for X in {1..124}; do echo -n '─'; done
