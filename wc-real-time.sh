# WC (Word Count) Real Time

# Count the amount of lines a certain output/file have
$ wc -l

# Count the amount of lines a certain output/file have in real time
$ tail -n +1 -f fileee.txt | awk '{printf "\r%lu", NR}'
