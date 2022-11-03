#!/usr/bin/sh

# update entire server
pacman -Syu

# get base packages
pacman -Sy lazygit git neovim tmux wget ttf-jetbrains-mono ripgrep fish htop prettier stylua aws-cli bat exa ncdu

# update
curl -L https://fly.io/install.sh | sh
