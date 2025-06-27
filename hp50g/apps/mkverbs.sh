#!/usr/bin/env bash

for f in *.hp50g; do
  file=${f%.hp50g}
cat <<EOF
  ; ${file}.hp
  Send, {LCtrl Down}o{LCtrl Up}
  Send, Z:\\workspace\\hp50g\\programs\\main\\apps\\${file}.hpprg
  Send, {enter 2}
  Send, {LAlt Down}a{LAlt Up}
  Send, {down 8}
  Send, {enter}
  Send, ${file}.hp
  Send, {enter 2}
  Send, {LAlt Down}F4{LAlt Up}
  Send !{f4} ; Simulates the keypress alt+f4
EOF

done
