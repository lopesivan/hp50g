#!/usr/bin/env bash

hp=uerj.hpprg
echo "%%HP: T(0)A(D)F(.);" > "$hp"
for f in ../lib/*.hp50; do
  cat -s "$f" | sed '/^@.*/d' | sed '/^$/d'| sed 's/^ //' | ./hp.sed >> "$hp"
done 
cp  "$hp"  ~/Downloads/hp/
