# Tullie Files #

## Install ##

# Mac install
- Change capslock to ctrl
- Run bin/osx
- Install iTerm2
- Install fonts
- Change iTerm2 theme and font

- ```git clone https://github.com/tullie/tullie_files $HOME/.tullie_files```
- ```/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"``` 
- ```brew install zsh ctags git hub tmux reattach-to-user-namespace the_silver_searcher```
- ```brew install neovim
- ```chsh -s /bin/zsh```
- ```ln -s "$HOME"/.tullie_files/zsh/zshrc "$HOME"/.zshrc```
- ```ln -s "$HOME"/.tullie_files/zsh/inputrc "$HOME"/.inputrc```
- ```ln -s "$HOME"/.tullie_files/zsh/editrc "$HOME"/.editrc```
- ```ln -s "$HOME"/.tullie_files/git/gitconfig "$HOME"/.gitconfig```
- ```ln -s "$HOME"/.tullie_files/git/gitignore "$HOME"/.gitignore```
- ```ln -s "$HOME"/.tullie_files/tmux/tmux.conf "$HOME"/.tmux.conf```
- ```ln -s "$HOME"/.tullie_files/vim/vimrc "$HOME"/.vimrc```
- ```ln -s "$HOME"/.tullie_files/vim "$HOME"/.vim```
- ```mkdir -p "$HOME"/.config/nvim && ln -s "$HOME"/.tullie_files/vim/init.vim "$HOME"/.config/nvim/init.vim```
- ```brew install fzf```
- ```$(brew --prefix)/opt/fzf/install```

For zsh prompt themes - clone prezto in the prezto directory (recursively). 
- ```cd "$HOME"/.tullie_files/zsh/prezto && git clone --recurse-submodules -j8 https://github.com/sorin-ionescu/prezto.git .```
- ```ln -s "$HOME"/.tullie_files/zsh/prezto "$HOME"/.zprezto```
- ```ln -s "$HOME"/.tullie_files/zsh/zpreztorc "$HOME"/.zpreztorc```

Install plugins in Vim
- :PlugInstall
