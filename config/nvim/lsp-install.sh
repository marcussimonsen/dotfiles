#!/bin/bash

set -e

PACKAGES=(
    bash-language-server
    clang
    vscode-css-language-server
    texlab
    lua-language-server
    marksman
    jedi-language-server
    sql-language-server
)
yay -S --noconfirm "${PACKAGES[@]}"

dotnet tool install fsautocomplete --global

# TODO: Haskell LSP
echo "Install Haskell LSP Manually (for now)"
