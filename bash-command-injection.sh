idea: @sirifu4k1

# My final payload:
# ${0##\-}<<<$\'\\$(($((1<<1))#10011010))\\$(($((1<<1))#10100011))\'
# Let's understand what the hell is happening here.

## 1.1: ${0##\-}
# ${} is a parameter expansion; "$0" == is the first parameter, which is the script itself.
# Since we're "executing" "$0" straight on the shell, the program that is getting executed is bash
# But on my shell, bash had a little "-" dash sign next to the "b" letter of bash, so I removed it
# using parameter expansion (${0##\-} == removes the dash "-" from "-bash", and we're left with "bash")

## 1.2: <<<
# A "Here String" is used for input redirection from text or a variable.
# For example: (counting the words of a given file called about.txt)
$ wc -l <<< about.txt
1 # (output as an example)

## 1.3: $\' ... \'
# First of all, "$'Something\nSomething-else'" causes escape sequences to be interpreted.
# So we can call an decimal to be interpreted to text, just like so (154 in decimal == l; 163 in decimal == s):
$'\154\163'

# Another example:
$'\151\144' # 151 == i; 144 == d (id gets interpreted as a command)

## 1.4: \\$(( $(( 1 << 1 ))#10011010)) \\$(( $(( 1 << 1))#10100011 ))
# $(()) == POSIX arithmetic expansion
# Note: (man bash)
# Words of the form $'string' are treated specially. The word expands to
# string, with backslash-escaped characters replaced as specified by the ANSI C
# standard.

# Note:
# The "\\" (double backslash) characters are necessary in order to force the shell to pass
# a "\$" (single backslash, dollar sign) to the arithmetic expansion.

### 2.4: $(( $((1<<1))#10011010 ))
# 1<<1 == 2
# Enclosing two arithmetic expansion inside of each other, so that 2#10011010 (decimal "154" to binary is "10011010") is equal to 154 (decimal)
# We can use this website "https://www.rapidtables.com/convert/number/binary-to-decimal.html" to transform binary to decimal
# And use this website to transform decimal to binary "https://www.rapidtables.com/convert/number/decimal-to-binary.html"

# The number before the "#" is the radix (or base)
# In the end, 2 # 10011010 == 154

### 3.4: $(( $((1<<1))#10100011 ))
# Is exatcly the same concept as I mentioned previously (at 2.4), and we're left with 163 (decimal)

# Conclusion:
# This whole mess will give us the result $'\154\163', which is "ls"

# Image explanation, by @sirifu4k1
# https://pbs.twimg.com/media/FqJd-irakAEBPh_.jpg

