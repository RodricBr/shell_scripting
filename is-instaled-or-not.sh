#!/usr/bin/env bash

PKG="
git
curl
jq
iDontExist
pip
pip3
python3
go
rustc
awk
urldedupe
ultcon
nuclei
gau
"

for X in $PKG; do
  # We could use "command -v" instead of "hash" as well
  hash "$X" &>/dev/null && echo "Installed: $X" || echo "Not Installed: $X"
done
