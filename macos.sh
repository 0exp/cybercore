#!/bin/sh
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew update
brew upgrade

npm install -g yarn

brew install protobuf
brew install tokey
brew install ripgrep
brew install tmux
brew install htop
brew install direnv
brew install rbenv
brew install mc
brew install pstree

# Corrects errors in previous console command
brew install fuck

# homebrew extended
brew cask # or brew install caskroom/cask/brew-cask

# iterm2 <3
brew cask install iterm2 && brew cask cleanup

# Archiver
brew cask install keka

# Right browser in right place
brew cask install finicky

# Documentation generator
pip install mkdocs

# Zsh Prompt
yarn global add spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
