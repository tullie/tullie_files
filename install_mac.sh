#!/usr/bin/env bash
# Author: Tullie Murrell (tulliemurrell@gmail.com)
set -ex

DOTFILES="$HOME/.tullie_files"

# Homebrew
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  touch "$HOME"/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME"/.zprofile
fi

brew bundle --file="$DOTFILES/Brewfile"
brew bundle --file="$DOTFILES/Brewfile.mac"

# Change shell to zsh
chsh -s /bin/zsh

source "$DOTFILES/install_common.sh"
