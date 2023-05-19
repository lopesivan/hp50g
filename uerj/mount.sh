#!/usr/bin/env bash

echo "%%HP: T(0)A(D)F(.);"

echo "\<< HOME 'main' PGDIR CLEAR"
echo DIR

cat -s ../libs/*.hp50g

DIRS=$(find . -maxdepth 1 -type d| sed '1d')

FILES=$(find . -maxdepth 1 -name \*.hp50)

cat <<EOF
CST { 
{ + \<< 22.2 KEYEVAL uerj \>> } 
{ "CONF" \<< conf \>> } 
{ HELP HELP } 
IVAN 
{ "" } 
{ "" }
}
EOF

echo uerj
echo DIR

for f in "${FILES[@]}"; do
    cat -s "$f"
done

for d in ${DIRS[@]}; do  
    ( cd "$d"; ./mount.sh ) 
done

echo END
echo "END 'main' STO main conf main CLEAR"
echo '\>>'
