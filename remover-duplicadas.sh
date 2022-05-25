# Removendo duplicadas de um arquivo usando AWK
# Quase os mesmos resultados do programa "anew"

cat arquivo.txt | awk '!line[$0]++' | wc -l

# Inclusive, ela chega a ter uma performance maior do que o anew,
# o que é um ponto crucial pra quem está disposto a usa-lo em um script
# de automação. Eu testei em um arquivo com 169365 linhas, e, ao executar
# o awk para remover as duplicadas, eu notei que o resultado foi o mesmo
# do anew, que foi 168805, porem o resultado de tempo foi significativo
# para o AWK: 0m0.172s(sys). Sendo que o tempo do anew foi de: 0m0.906s(sys)

# Testando a velocidade:

# ANEW
time cat arquivo-bem-grande.txt | anew | wc -l

# AWK
time cat arquivo-bem-grande.txt | awk '!line[$0]++' | wc -l


# Um detalhe interessante.
# Como esse comando é um pouco difícil de gravar na mente, podemos
# bota-lo em um alias, ou criar uma função dentro do .bashrc ou do /etc/profile
