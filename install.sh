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
ln -sf $(pwd)/zsh/.zshrc ~

# JetBrainsMono Nerd Font
curl -L -o /tmp/JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
mkdir -p ~/.local/share/fonts
unzip -o /tmp/JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
rm /tmp/JetBrainsMono.zip
fc-cache -f