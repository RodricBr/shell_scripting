# Default way:
printf %$(tput cols)s | tr " " "-"

# OR pure bash:
AAA_=$(printf %$(tput cols)s); echo ${AAA_// /-}

# Prints the number of columns
tput cols

# Prints the number of lines
tput lines
