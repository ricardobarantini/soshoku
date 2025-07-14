mkdir -p ~/.config/soshoku/themes

for f in $SOSHOKU_DIR/themes/*; do
  ln -sf "$f" ~/.config/soshoku/themes/
done

source "$SOSHOKU_DIR"/bin/set-theme catppuccin

