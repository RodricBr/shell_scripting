# Removendo duplicadas de um arquivo usando AWK
# Quase os mesmos resultados do programa "anew"

cat arquivo.txt | awk '!line[$0]++' | wc -l

# Inclusive, ela chega a ter uma performance maior do que o anew,
# o que é um ponto crucial pra quem está disposto a usa-lo em um script
# de automação. Eu testei em um arquivo com 169365 linhas, e, ao executar
# o awk para remover as duplicadas, eu notei que o resultado foi o mesmo
# do anew, que foi 168805, porem o resultado de tempo foi significativo
# para o AWK: 0m0.245s() endo que o tempo do anew foi de: 0m0.653s
