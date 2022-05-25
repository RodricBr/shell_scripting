# Removendo duplicadas de um arquivo usando AWK
# Quase os mesmos resultados do programa "anew"

cat arquivo.txt | awk '!line[$0]++' | wc -l
