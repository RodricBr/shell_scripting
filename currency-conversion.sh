# Criando a função que ficará armazenada até o fechamento da shell atual
$ CONV(){ local USD=5.07 EUR=5.56; local -n Ind=$1; bc <<< "$Ind * $2"; }

# Convertendo 100 dólares para reais brasileiros
$ CONV USD 100
507.00 # (resultado)

# Convertendo 100 euros para reais brasileiros
$ CONV EUR 100
556.00 # (resultado)
