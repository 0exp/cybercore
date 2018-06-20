export ZSH=/Users/DaiveR/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(sublime osx)
source $ZSH/oh-my-zsh.sh

# register SSH credentials
ssh-add -K ~/.ssh/id_rsa > /dev/null 2>&1

# git aliases
alias gbd="git branch -D"
alias gbl="git branch -l"
alias gct="git commit"
alias gmrg="git merge"
alias gcm="git commit -m"
alias gca="git add -A && git commit -m"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gst="git status"
alias gdfc="git diff --cached"
alias gdf="git diff"
alias gaa="git add ."
alias gad="git add"
alias gswipe="git reset --soft HEAD^"
alias grs="git reset HEAD"
alias gplo="git pull origin"
alias gpo="git push origin"
alias gpp="git push"
alias gpt="git push --tags"
alias glg="git log --graph --date=relative --pretty=format:\"%C(yellow)%h%C(reset) (%C(cyan)%ad%C(reset)) [%C(green)%an%C(reset)] %C(white)%s%C(reset)\""
alias glp="git log -p"
alias gconfed="st ~/.gitconfig"
alias ggnored="st ~/.gitignore"

# initialize rbenv (ruby version manager)
eval "$(rbenv init -)"
alias rbenv-upgrade="brew upgrade rbenv ruby-build"

# bundler aliases
alias be="bundle exec"
alias bi="bundle install"

# zsh aliases
alias zshreload="source ~/.zshrc"
alias zshedit="st ~/.zshrc"

# initialize NVM (nodejs version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# initialize kiex (elixir version manager)
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

# register global editor
export EDITOR="/usr/bin/vim"
