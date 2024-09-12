# Bash's printf is very similar to C and other languages such as, in this example, C++ - that includes this very function.
# We can use the "%10s" ("s" = String of characters) to print a sertain amount of empty spaces.

# % is a format specifier special character that indicates a string should be printed.
# The number 10 specifies that the string should be padded with spaces to a total width of 10 characters, right-aligned. Like so:
printf "Hello%10sWorld!"

# Bash output:
# Hello          World!

# Following the same concept, we can use print left-aligned added a dash (-) next to the number
# The "-10" specifies that the string should be padded with spaces to a total width of 10 characters, left-aligned.
printf "%-10sWorld!" "Hello"

# Bash output:
# Hello     World! (Notice how the space is not 10 but rather 5, because the word "Hello" has a width of 5 characters)
