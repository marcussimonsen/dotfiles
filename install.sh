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
  # Environment stuff
  hyprland
  hypridle
  hyprlock
  hyprsunset
  hyprpaper
  hyprshot
  waybar
  rofi
  wl-clipboard
  man-db
  man-pages
  inotify-tools
  usbutils
  displaylink
  zsh
  udev
  udisks2
  # Network
  networkmanager
  inetutils
  iputils
  # Bluetooth
  bluez
  bluez-utils
  # Audio stuff
  pipewire
  wireplumber
  pipewire-pulse
  # Dev
  git
  tmux
  neovim
  fzf
  # Utilities
  ripgrep
  htop
  zip
  unzip
  rsync
  tldr
  z
  bc
  jmtpfs        # For accessing files on phone
  power-profiles-daemon
  # Programs
  alacritty
  brave-bin
  mpv
  discord
  evince
  # Fun
  sl
  thefuck
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
