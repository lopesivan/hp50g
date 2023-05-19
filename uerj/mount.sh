#!/usr/bin/env bash

echo "\<< HOME 'main' PGDIR CLEAR"
echo DIR

cat -s ../libs/*.hp50g

DIRS=$(find . -maxdepth 1 -type d| sed '1d')

FILES=$(find . -maxdepth 1 -name \*.hp50)

for f in "${FILES[@]}"; do
    cat -s "$f"
done

for d in ${DIRS[@]}; do  
    ( cd "$d"; ./mount.sh ) 
done

echo "END 'main' STO main conf main CLEAR"
echo '\>>'
