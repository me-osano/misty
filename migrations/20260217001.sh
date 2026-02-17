# Copy hypr configs
cp -n "$MISTY_PATH/dotfiles/config/hypr/"* "$HOME/.config/hypr/" 2>/dev/null || true

echo "Hyprland configs copied. Please review and customize them in ~/.config/hypr/ if needed."