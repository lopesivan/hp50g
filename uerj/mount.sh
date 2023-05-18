#!/usr/bin/env bash

DIRS=$(
ls -l --time-style="long-iso" . | egrep '^d' | awk '{print $8}'
)

FILES=$(
ls -l --time-style="long-iso" . | egrep '\.hp50$' | awk '{print $8}'
)

echo "$(pwd | sed 's=.*/==')"
echo DIR


for f in ../lib/*.hp50; do
  sed 's/^@.*//' "$f"
done| cat -s | sed '/^$/d'| sed 's/^/  /'

for f in "${FILES[@]}"; do
  sed 's/^@.*//' "$f"
done| cat -s | sed '/^$/d'| sed 's/^/  /'

for d in "${DIRS[@]}"; do
	(cd "$d"; ./mount.sh)
done| cat -s | sed '/^$/d'| sed 's/^/  /'

echo END
