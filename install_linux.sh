set -x

# Zsh
sudo apt install zsh

# Node is needed for neovim
sudo apt install nodejs
# Neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Change shell to zsh
chsh -s $(which zsh)

# Symlinks
ln -s "$HOME"/.tullie_files/zsh/zshrc "$HOME"/.zshrc
ln -s "$HOME"/.tullie_files/zsh/inputrc "$HOME"/.inputrc
ln -s "$HOME"/.tullie_files/zsh/editrc "$HOME"/.editrc
ln -s "$HOME"/.tullie_files/git/gitconfig "$HOME"/.gitconfig
ln -s "$HOME"/.tullie_files/git/gitignore "$HOME"/.gitignore
ln -s "$HOME"/.tullie_files/tmux/tmux.conf "$HOME"/.tmux.conf
ln -s "$HOME"/.tullie_files/vim/vimrc "$HOME"/.vimrc
ln -s "$HOME"/.tullie_files/vim "$HOME"/.vim

mkdir -p "$HOME"/.config/nvim
ln -s "$HOME"/.tullie_files/vim/init.vim "$HOME"/.config/nvim/init.vim

# Prezto (themes and prompt)
git clone --recurse-submodules -j8 https://github.com/sorin-ionescu/prezto.git "$HOME"/.tullie_files/zsh/prezto
ln -s "$HOME"/.tullie_files/zsh/prezto "$HOME"/.zprezto
ln -s "$HOME"/.tullie_files/zsh/zpreztorc "$HOME"/.zpreztorc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
