# ln -snf $SOSHOKU_DIR/config/alacritty ~/.config
ln -snf "$SOSHOKU_DIR"/config/ghostty ~/.config
ln -snf "$SOSHOKU_DIR"/config/hypr ~/.config
ln -snf "$SOSHOKU_DIR"/config/nvim ~/.config
ln -snf "$SOSHOKU_DIR"/config/rofi ~/.config
ln -snf "$SOSHOKU_DIR"/config/starship.toml ~/.config
ln -snf "$SOSHOKU_DIR"/config/waybar ~/.config
ln -snf "$SOSHOKU_DIR"/config/wofi ~/.config
ln -snf "$SOSHOKU_DIR"/config/.zprofile "$HOME"
ln -snf "$SOSHOKU_DIR"/config/.zshrc "$HOME"

# Copy .desktop files
mkdir -p ~/.local/share/applications
cp "$SOSHOKU_DIR"/applications/hidden/*.desktop ~/.local/share/applications
update-desktop-database ~/.local/share/applications
