#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations
export MISTY_ONLINE_INSTALL=true

ansi_art='
████        ███╗█████████╗█████████╗█████████╗███╗    ███╗
█████     █████║   ███╔══╝███╔═════╝   ███╔══╝███╚╗   ███║
██████   ██████║   ███║   ███║         ███║    ███║   ███║
███║███ ███║███║   ███║   █████████╗   ███║     █████████║
███║ █████║ ███║   ███║         ███║   ███║           ███║ 
███║  ███║  ███║   ███║         ███║   ███║          ███╔╝ 
███║  ╚══╝  ███║█████████╗█████████║   ███║    ████████╔╝ 
╚══╝        ╚══╝╚════════╝╚════════╝   ╚══╝    ╚═══════╝    '

clear
echo -e "\n$ansi_art\n"

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to me-osano/misty
MISTY_REPO="${MISTY_REPO:-me-osano/misty}"

echo -e "\nCloning Misty from: https://github.com/${MISTY_REPO}"
rm -rf ~/.local/share/misty/
git clone "https://github.com/${MISTY_REPO}.git" ~/.local/share/misty >/dev/null

# Use custom branch if instructed, otherwise default to master
MISTY_REF="${MISTY_REF:-master}"
if [[ $MISTY_REF != "master" ]]; then
  echo -e "\e[32mUsing branch: $MISTLETOE_REF\e[0m"
  cd ~/.local/share/misty
  git fetch origin "${MISTY_REF}" && git checkout "${MISTY_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/misty/all.sh
