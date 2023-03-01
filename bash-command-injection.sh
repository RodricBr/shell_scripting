@sirifu4k1

# My final payload:
# ${0##\-}<<<$\'\\$(($((1<<1))#10011010))\\$(($((1<<1))#10100011))\'
# Let's understand what the hell is happening here.

# First of all, "$'Something\nSomething-else'" causes escape sequences to be interpreted.
# So we can call an octal to be interpreted to text, just like so (154 in octal == l; 163 in octal == s):
$'\154\163'

# Another example:
$'\151\144' # 151 == i; 144 == d (id gets interpreted as a command)

