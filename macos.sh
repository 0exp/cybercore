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
brew install mkcert # locally-trusted development certificates
brew install nss # mkcert->firefox support
brew install fuck # (corrects errors in previous console command)
brew install watchman
brew install imagemagick # (ARGH AAARGGHHHHH)
brew cask # or brew install caskroom/cask/brew-cask (homebrew extended)
brew cask install iterm2 && brew cask cleanup
brew cask install keka # (archiver)
brew cask install finicky # (right browser in right place)
brew cask install sonic-pi # (<3 live-coding virtual synth)
brew cask install google-chrome
brew cask install firefox
brew cask install postman # (api test utility)
brew cask install virtualbox
brew cask install sourcetree
pip install mkdocs # documentation generator

# Zsh Prompt
yarn global add spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
