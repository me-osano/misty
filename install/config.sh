# Copy over Misty configs
mkdir -p ~/.config
cp -R ~/.local/share/misty/dotfiles/config/* ~/.config/

# Use default bashrc from Misty
cp ~/.local/share/misty/dotfiles/bashrc ~/.bashrc
cp ~/.local/share/misty/dotfiles/bash_profile ~/.bash_profile

# Allow the user to change the branding for fastfetch
mkdir -p ~/.config/misty/branding
cp ~/.local/share/misty/icon.txt ~/.config/misty/branding/about.txt

echo "Done coying config files"