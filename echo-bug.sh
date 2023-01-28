# Bash's echo has a little bug on it. In short, you're not allowed to echo "-n", like so:
$ echo -n

# The result will return empty, because the "-n" will be treated as an option flag (-n == do not output the trailing newline)

# A simple way we can bypass this problem is by using the "\c" sequence. (\c == no-further-output escape / produce no further output)
# See below how it's done:
$ echo -e "-n\c"
-n

# And so "-n" gets interpreted as a normal string, instead of a bash option flag...

# Alternately, we can encode either "-" or "n" (or both) with either the "\0NNN" octal escape OR "\xHH" hexidecimal escape.
# Just like so:
$ echo -en "-\x6e"
-n
$ echo -en "-\0156"
-n

# Also a simple way of avoiding this problem is by adding an empty character next to the string, like so:
$ echo "-n "
-n

# Using printf, which is better than echo in some cases will solve this problem 100%.
$ printf "%s\n" "-n"
-n
