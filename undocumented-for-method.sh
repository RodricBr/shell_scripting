# Undocumented method/hack using braces:
time for ((X=1; X<=2000; X++)) { echo $((2+2)) &>/dev/null;}

# Default method the we see in many scripts:
time for ((X=1; X<=2000; X++)); do echo $((2+2)) &>/dev/null; done

# It is an optional way of writing the body of the "for" loop
# The condition would be written differently in Bourne shell (sh).

# In Bourne shell (sh) we use "do" and "done" in place of "{" and "}".
