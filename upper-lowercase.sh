# In bash, there's a simple but neat variable expansion functionality for string manipulation that allows you to transform
# a string into uppercase with the use of "^^" or to lowercase with ",,". Here's an example:

TEST="upperCase ThiS";
echo -e "${TEST^^}"
UPPERCASE THIS      #---> Output

TEST="LOWeR CaSE THIS";
echo -e "${TEST,,}"
lower case this     #---> Output
