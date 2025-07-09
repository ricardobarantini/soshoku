#!/bin/bash

ascii="               _           _
              | |         | |
 ___  ___  ___| |__   ___ | | ___   _
/ __|/ _ \/ __| '_ \ / _ \| |/ / | | |
\__ \ (_) \__ \ | | | (_) |   <| |_| |
|___/\___/|___/_| |_|\___/|_|\_\\__,_|"

echo -e "\n$ascii\n"

ln -sf $(pwd)/alacritty ~/.config/alacritty
ln -sf $(pwd)/hypr ~/.config/hypr
ln -sf $(pwd)/nvim ~/.config/nvim
ln -sf $(pwd)/starship/starship.toml ~/.config
ln -sf $(pwd)/waybar ~/.config/waybar
ln -sf $(pwd)/wofi ~/.config/wofi
ln -sf $(pwd)/zsh/.zshrc ~/.config