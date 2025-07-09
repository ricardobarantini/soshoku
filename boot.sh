#!/bin/bash

echo -e "\nCloning Soshoku..."
rm -fr ~/.local/share/soshoku
git clone https://github.com/ricardobarantini/soshoku.git ~/.local/share/soshoku > /dev/null

echo -e "\nCreating link for dotfiles..."
source ~/.local/share/soshoku/install.sh