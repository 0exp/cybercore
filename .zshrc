export ZSH=/Users/DaiveR/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(sublime osx)
source $ZSH/oh-my-zsh.sh

# register SSH credentials
ssh-add -K ~/.ssh/id_rsa > /dev/null 2>&1

# reload zsh environment
alias zshreload!="source ~/.zshrc"

# initialize rbenv (ruby version manager)
eval "$(rbenv init -)"
alias rbenv-upgrade="brew upgrade rbenv ruby-build"

# bundler aliases
alias be="bundle exec"

# initialize NVM (nodejs version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# initialize kiex (elixir version manager)
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"
