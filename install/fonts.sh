mkdir -p ~/.local/share/fonts

# JetBrainsMono Nerd Font
if ! grep -qi "JetBrainsMono Nerd Font" < <(fc-list); then
    cd /tmp
    curl -L -o /JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
    unzip -o /JetBrainsMono.zip -d ~/.local/share/fonts/JetBrainsMono
    rm /JetBrainsMono.zip
    fc-cache -f
    cd -
fi