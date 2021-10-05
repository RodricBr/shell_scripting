# Se todos (*) os parametros ($) forem zero (-z)...
# $* dentro das aspas duplas pra evitar interpretação de string
# Dentro do [[ só pode ser usado $* ou $#, o $@ é pra uso com arrays
if [[ -z "$*" ]]; then
  echo "Ajuda: exemplo..."
fi
