# Edição de texto interface de terminal usando eof (end of file)

~$ cat > exemplo.txt << EOF
>#include <stdio.h>
>#include <stdlib.h>
>
>int main(int argc, char *argv[]){
>  printf("Ola, mundo!\n");
>  return 0;
>}
>EOF
