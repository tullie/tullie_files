#!/usr/bin/env bash
# Author: Tullie Murrell (tulliemurrell@gmail.com)
set -ex

DOTFILES="$HOME/.tullie_files"

# zsh needs to come from apt so chsh can register it as a login shell
sudo apt-get update
sudo apt-get install -y zsh build-essential procps curl file git

# Homebrew (works on Linux too - lets install_common share one Brewfile
# with install_mac.sh instead of hand-maintaining apt package names)
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> "$HOME"/.profile
fi

brew bundle --file="$DOTFILES/Brewfile"

# Change shell to zsh
chsh -s "$(which zsh)"

source "$DOTFILES/install_common.sh"
