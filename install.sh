#!/bin/bash

set -e

# Update system
sudo pacman -Syu --noconfirm

# Install essentials
sudo pacman -S --noconfirm git base-devel

# Install AUR helper (yay)
if ! command -v yay &> /dev/null; then
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
fi

# Packages to install
PACKAGES=(
  hyprland
  waybar
  rofi
  neovim
  zsh
  brave-bin
)

# Install all packages
yay -S --noconfirm "${PACKAGES[@]}"

# Optionally set up dotfiles
echo "Setting up config files..."
for config in "$HOME"/.dotfiles/config/*; do
    name=$(basename "$config")
    echo "Setting up config for $name"
    rm -rf "$HOME/.config/$name"
    ln -s "$HOME/.dotfiles/config/$name" "$HOME/.config/$name"
done
echo "Done setting up configs"
