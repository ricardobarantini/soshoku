#!/bin/bash

ascii="               _           _
              | |         | |
 ___  ___  ___| |__   ___ | | ___   _
/ __|/ _ \/ __| '_ \ / _ \| |/ / | | |
\__ \ (_) \__ \ | | | (_) |   <| |_| |
|___/\___/|___/_| |_|\___/|_|\_\\__,_|"

echo -e "\n$ascii\n"

SOSHOKU_DIR=~/.local/share/soshoku

for f in $SOSHOKU_DIR/install/*.sh; do source "$f"; done