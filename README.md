# Tullie Files #

## Install ##

# Mac install
- Change capslock to ctrl
- Run bin/osx
- Install iTerm2
- Install fonts
- Change iTerm2 theme and font
- Install xcode

- ```git clone https://github.com/tullie/tullie_files $HOME/.tullie_files```
- ```/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"``` 
- ```brew install fasd zsh ctags git hub tmux reattach-to-user-namespace the_silver_searcher```
- ```brew install vim --override-system-vim --with-lua --with-luajit```
- ```chsh -s /bin/zsh```
- ```ln -s "$HOME"/.tullie_files/zsh/zshrc "$HOME"/.zshrc```
- ```ln -s "$HOME"/.tullie_files/zsh/inputrc "$HOME"/.inputrc```
- ```ln -s "$HOME"/.tullie_files/zsh/editrc "$HOME"/.editrc```
- ```ln -s "$HOME"/.tullie_files/git/gitconfig "$HOME"/.gitconfig```
- ```ln -s "$HOME"/.tullie_files/git/gitignore "$HOME"/.gitignore```
- ```ln -s "$HOME"/.tullie_files/tmux/tmux.conf "$HOME"/.tmux.conf```
- ```ln -s "$HOME"/.tullie_files/vim/vimrc "$HOME"/.vimrc```
- ```ln -s "$HOME"/.tullie_files/vim "$HOME"/.vim```

For zsh prompt themes, clone prezto in the prezto directory (recursively). TODO(tullie): make this automatic.
- ```ln -s "$HOME"/.tullie_files/zsh/prezto "$HOME"/.zprezto```
- ```ln -s "$HOME"/.tullie_files/zsh/zpreztorc "$HOME"/.zpreztorc```

# Linux install
TODO
