AAA_="uname -a"; for ((X=0; X<${#AAA_}; X++)); do echo -n "${AAA_:$X:1}"; done

# or

AAA_="uname -a"
for ((X=0; X<${#AAA_}; X++)); do # ${#AAA_} gets the total of characters in the AAA_ variable
  echo -n "${AAA_:$X:1}" # expands to the substring starting at position "$X" (0 to 8) of length 1
done
