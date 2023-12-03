# Column is a command that columnate lists.
echo -e "This-is-an-example This-is-another-row" | column -t

# "-t" determines the number of columns the input contains and create a table.
# Columns are delimited with WHITESPACES, by default, or with the characters supplied using the -s option.

# Using custom delimiter (:)
echo -e "First\x20Row │:Second Row │:Third Row\nValues:255:1337" | column -t -s ":"

# Another cool example:
(printf "PERM LINKS OWNER GROUP SIZE MONTH DAY HH:MM/YEAR NAME\n" ; ls -l | sed 1d) | column -t
# With colors:
(printf "\033[32mPERM LINKS OWNER GROUP SIZE MONTH DAY HH:MM/YEAR NAME\033[00m\n" ; ls -l | sed 1d) | column -t

# I lost my mind: (using tail instead of sed to remove the first line)
(printf "\033[32mPERM LINKS OWNER GROUP SIZE MONTH DAY HH:MM/YEAR NAME\033[00m\n" ; tail +2 <<< $(ls -l)) | column -t
