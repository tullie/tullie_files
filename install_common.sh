#!/usr/bin/env bash
# Author: Tullie Murrell (tulliemurrell@gmail.com)
#
# Symlink logic shared by install_mac.sh and install_linux.sh. Not meant to
# be run directly.
set -e

DOTFILES="$HOME/.tullie_files"

link() {
  local src="$DOTFILES/$1"
  local dest="$HOME/$2"
  mkdir -p "$(dirname "$dest")"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Backing up existing $dest -> $dest.pre-tullie-files"
    mv "$dest" "$dest.pre-tullie-files"
  fi
  ln -sf "$src" "$dest"
}

# Shell
link zsh/zshrc .zshrc
link zsh/inputrc .inputrc
link zsh/editrc .editrc
link zsh/zpreztorc .zpreztorc

# Git / tmux
link git/gitconfig .gitconfig
link git/gitignore .gitignore
link tmux/tmux.conf .tmux.conf

# Neovim (the whole directory is the nvim config root)
link nvim .config/nvim

# Claude Code settings
link claude/settings.json .claude/settings.json

# Prezto (completion/git/ssh/etc modules - prompt comes from Starship)
if [ ! -d "$DOTFILES/zsh/prezto/.git" ]; then
  git clone --recurse-submodules -j8 https://github.com/sorin-ionescu/prezto.git "$DOTFILES/zsh/prezto"
fi
link zsh/prezto .zprezto

# tmux plugin manager
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# Bootstrap Neovim plugins headlessly (lazy.nvim self-clones on first launch)
nvim --headless "+Lazy! sync" +qa || echo "Lazy sync had issues - open nvim and run :Lazy to check"

cat <<'EOF'

Done. A few one-time manual steps:
  - Set ANTHROPIC_API_KEY in your environment to use the in-editor AI chat (codecompanion.nvim).
  - Start tmux and press <prefix> + I to finish installing tmux plugins (TPM bootstrap).
  - If ~/.gitconfig.local doesn't exist yet, create it with your user.name/user.email
    and any machine-specific credential helpers (see README).
EOF
