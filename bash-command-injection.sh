@sirifu4k1

# My final payload:
# ${0##\-}<<<$\'\\$(($((1<<1))#10011010))\\$(($((1<<1))#10100011))\'
# Let's understand what the hell is happening here.

## 1.1:
# ${} is a parameter expansion; "$0" == is the first parameter, which is the script itself.
# Since we're "executing" "$0" straight on the shell, the program that is getting executed is bash
# But on my shell, bash had a little "-" dash sign next to the "b" letter of bash, so I removed it
# using parameter expansion (${0##\-} == removes the dash "-" from "-bash", and we're left with "bash")

## 1.2:
# First of all, "$'Something\nSomething-else'" causes escape sequences to be interpreted.
# So we can call an octal to be interpreted to text, just like so (154 in octal == l; 163 in octal == s):
$'\154\163'

# Another example:
$'\151\144' # 151 == i; 144 == d (id gets interpreted as a command)

