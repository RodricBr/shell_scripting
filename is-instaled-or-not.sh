#!/usr/bin/env bash

# Programs / Binaries
PROGS="
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

# Packages
PKGS="
python3-pip
python3
curl
git
jq
nmap
"

for X in $PROGS; do
  # We could use "command -v" instead of "hash" as well
  hash "$X" &>/dev/null && echo "Installed: $X" || echo "Not Installed: $X"
done

# "dpkg -s" exits with status "1" if any of the packages are not installed/found on the system

# NOTE: This will only work for programs that were installed using debian's package manager.
# Nuclei, gau & etc will not be recognized as packages, since they're not packages
if ! dpkg -s "$PKGS" >/dev/null 2>/dev/null; then
  sudo apt-get install -qy "$PKGS"
fi
