# Tullie Files #

Personal dotfiles: zsh (Prezto), Neovim (Lua, lazy.nvim), tmux, git, and
Claude Code settings.

## Tools this assumes

- **Shell**: zsh + [Prezto](https://github.com/sorin-ionescu/prezto), prompt is the custom `pure_tullie` theme (`zsh/custom_themes/`). [Starship](https://starship.rs) is installed but unused by default - see the comment above the prompt line in `zsh/zshrc` to switch (it's a heavier per-command prompt, so `pure_tullie` is the default for snappiness)
- **Navigation**: [zoxide](https://github.com/ajeetdsouza/zoxide), [fzf](https://github.com/junegunn/fzf), [ripgrep](https://github.com/BurntSushi/ripgrep), [fd](https://github.com/sharkdp/fd)
- **CLI**: [eza](https://github.com/eza-community/eza), [bat](https://github.com/sharkdp/bat), [git-delta](https://github.com/dandavison/delta)
- **Shell history / env**: [atuin](https://atuin.sh), [direnv](https://direnv.net), [mise](https://mise.jdx.dev)
- **Editor**: Neovim, Lua config under `nvim/`, plugins managed by [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Multiplexer**: tmux + [TPM](https://github.com/tmux-plugins/tpm)
- **Terminal**: [Ghostty](https://ghostty.org) (no terminal-emulator config lives in this repo - use Ghostty's own config)
- **Font**: JetBrains Mono Nerd Font (installed via Homebrew cask)
- **AI in-editor**: [codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim) using Claude (needs `ANTHROPIC_API_KEY`)

## Install

```
git clone https://github.com/tullie/tullie_files "$HOME/.tullie_files"
cd "$HOME/.tullie_files"
./install_mac.sh    # or ./install_linux.sh
```

This installs Homebrew (if missing; on Linux too - see `Brewfile`), runs
`brew bundle`, and then `install_common.sh`, which:

- symlinks the shell/git/tmux/nvim/Claude configs into `$HOME`
  (existing real files are backed up to `<file>.pre-tullie-files`, not
  overwritten)
- clones Prezto and TPM
- headlessly bootstraps all Neovim plugins via lazy.nvim

If Homebrew needs `sudo` and prompts for a password, run that step
interactively yourself first.

### One-time manual steps

- Set `ANTHROPIC_API_KEY` in your environment to use the in-editor AI chat.
- Open tmux and press `<prefix> + I` to finish installing tmux plugins.
- Create `~/.gitconfig.local` (not tracked here) with anything
  machine-specific: `user.name`/`user.email`, credential helpers, LFS
  filters, etc. `git/gitconfig` `[include]`s it, and settings there
  override anything set in the tracked config (so e.g. a different
  `pull.rebase` per machine works fine). Example:

  ```
  [user]
      name = Your Name
      email = you@example.com
  ```

## Layout

```
zsh/      zshrc, prezto config, inputrc/editrc
git/      gitconfig (includes ~/.gitconfig.local), gitignore
tmux/     tmux.conf
nvim/     init.lua + lua/config, lua/plugins (this whole dir is ~/.config/nvim)
claude/   Claude Code settings.json
Brewfile, Brewfile.mac   package lists for `brew bundle`
install_mac.sh, install_linux.sh, install_common.sh
```
