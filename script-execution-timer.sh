# Start of the counter
COUNTER_=$(date +%s)

# ... Script here ...

# End of the counter:wq
printf "Total-time: $(($(date +%s) - $COUNTER_)) seconds"
