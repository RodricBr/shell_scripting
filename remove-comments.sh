# Removing comments that starts with "# " (hashtag and space)
grep -v -e '^#[[:blank:]]\|^[[:space:]]*$' Arquivo.txt

# Explanation:

# -v == --invert-match
# -e == regex pattern

# ^#[[:blank:]] == Starting with a "#" followed by a blank character (# )
# \| == Grep more than one pattern/string
# ^[[:space:]]*$ == Starts and ends with a space (removing a single empty character)



# Bonus for practicality:
alias comments="grep -v -e '^#[[:blank:]]\|^[[:space:]]*$'"

$ comments remove-comments.txt
