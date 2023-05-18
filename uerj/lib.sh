#!/usr/bin/env bash

for f in ../lib/*.hp50; do
  ff="${f%.hp50}".hpprg
  hp="${ff##*/}"
  echo "%%HP: T(0)A(D)F(.);" > "$hp"
  cat -s "$f" | sed '/^@.*/d' | sed '/^$/d'| sed 's/^ //' | ./hp.sed >> "$hp"
  cp  "$hp"  ~/Downloads/hp/
done 
