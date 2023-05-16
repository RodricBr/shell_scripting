# One liner:
COLR=16; for COLR in {1..255}; do echo -e "\\\033[38;5;$COLR\0m - \t\\033[38;5;${COLR}m\\033[48;5;${COLR}mAAAA\\033[0m"; ((COLR++)); done
# OR
COLR=16; for ((COLR=0; COLR<=255; COLR++)) { echo -e "\\\033[38;5;$COLR\0m - \t\\033[38;5;${COLR}m\\033[48;5;${COLR}mAAAA\\033[0m";}

# Output example:
\033[38;5;255m -        <COLOR>
