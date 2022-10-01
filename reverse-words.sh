# Revertendo caracteres por palavra
$ function reverse_(){
>  for charlist; do local word
>    while (( ${#charlist} )); do
>      echo -n "${charlist:(-1)}"
>      charlist="${charlist:0:(-1)}"
>    done
>    ((++word == ${#@})) &&\
>      echo ||\
>      echo -n "${IFS:0:1}"
>  done
>}

# Output:
$ reverse_ Oi Tudo Bem?
iO oduT ?meB
