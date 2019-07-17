#!/bin/sh
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# TODO: migrate to ansible

brew update
brew upgrade

npm install -g yarn

brew install blueutil # console bluetooth utility
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
brew install erlang
brew install nmap
brew install redis
brew install rabbitmq
brew install memcached
brew install telnet
brew install mercurial
brew install shellcheck # shell script syntax analyzer
brew install fzf
brew install bat # NO cat! ONLY BAT!!!! (cat => bat evolution)
brew install dnsmasq # local dns :)
$(brew --prefix)/opt/fzf/install # install useful key bindings and fuzzy completions
brwe install gpg
brew cask # or brew install caskroom/cask/brew-cask (homebrew extended)
brew cask install iterm2
brew cask install keka # (archiver)
brew cask install sonic-pi # (<3 live-coding virtual synth)
brew cask install google-chrome
brew cask install firefox
brew cask install postman # (api test utility)
brew cask install virtualbox
brew cask install sourcetree

pip install mkdocs # documentation generator

gem install solargraph # Ruby LSP

# Zsh Prompt
yarn global add spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH/themes/spaceship-prompt"
ln -s "$ZSH/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/themes/spaceship.zsh-theme"

# NVM (nodejs version manager)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

brew cleanup
brew cask cleanup

# Sublime Symlink!! :)
# before: cd /usr/local/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" subl