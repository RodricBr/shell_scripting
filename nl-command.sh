# nl Command writes each file to standard output, with line numbers added. With no file, or when file is -, read standard input. (took from man)
# Declaring an array named "NAME_" with the given strings and making a loop through them to be served as input for nl command.
$ declare -a NAME_=("Rodric" "Ana" "Clara" "Mark" "Arthur" "Geralt"); for X in ${NAME_[@]}; do echo -e "$X"; done | nl -v1 -s'th place ' -w1
# Output:
1th place Rodric
2th place Ana
3th place Clara
4th place Mark
5th place Arthur
6th place Geralt

# -v1 :: Staring from count 1 (EX: 1 to the end of the array)
# -s :: Adds a string after line number
# -w :: Width of the line

# nl manual: https://linux.die.net/man/1/nl
