# Bash's printf is very similar to C and other languages such as, in this example, C++ - that includes this very function.
# We can use the "%10s" ("s" = String of characters) to print a sertain amount of empty spaces.

# % is a format specifier special character that indicates a string should be printed.
# The number 10 specifies that the string should be padded with spaces to a total width of 10 characters, right-aligned. Like so:
printf "Previous%10sAfter"

# Bash output:
# Previous          After
