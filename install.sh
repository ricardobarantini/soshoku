#!/bin/bash

ascii="               _           _
              | |         | |
 ___  ___  ___| |__   ___ | | ___   _
/ __|/ _ \/ __| '_ \ / _ \| |/ / | | |
\__ \ (_) \__ \ | | | (_) |   <| |_| |
|___/\___/|___/_| |_|\___/|_|\_\\__,_|"

echo -e "\n$ascii\n"

soshoku=~/.local/share/soshoku

ln -sf $soshoku/config/alacritty ~/.config/alacritty
ln -sf $soshoku/config/hypr ~/.config/hypr
ln -sf $soshoku/config/nvim ~/.config/nvim
ln -sf $soshoku/config/starship/starship.toml ~/.config
ln -sf $soshoku/config/waybar ~/.config/waybar
ln -sf $soshoku/config/wofi ~/.config/wofi
ln -sf $soshoku/config/zsh/.zshrc ~

# Copy .desktop files
mkdir -p ~/.local/share/applications
cp $soshoku/applications/*.desktop ~/.local/share/applications

# JetBrainsMono Nerd Font
if ! grep -qi "JetBrainsMono Nerd Font" < <(fc-list); then
    curl -L -o /tmp/JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
    mkdir -p ~/.local/share/fonts
    unzip -o /tmp/JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
    rm /tmp/JetBrainsMono.zip
    fc-cache -f
fi