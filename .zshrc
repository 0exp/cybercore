export ZSH=/Users/DaiveR/.oh-my-zsh
ZSH_THEME="spaceship"
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true
plugins=(sublime osx brew docker gpg-agent)
source $ZSH/oh-my-zsh.sh

# register SSH credentials
ssh-add -K ~/.ssh/id_rsa > /dev/null 2>&1

# go to project :)
alias gotodots="cd ~/Projects/dotfiles"
alias gotoarmitage="cd ~/Projects/armitage"
alias gotoanycache="cd ~/Projects/any_cache"
alias gotoevilevents="cd ~/Projects/evil_events"
alias gotoqonfig="cd ~/Projects/qonfig"
alias gotoportal="cd ~/Projects/sidekiq-portal"
alias gotorecipes="cd ~/Projects/recipes"
alias gotosymbiont="cd ~/Projects/symbiont-ruby"
alias gototrinity="cd ~/Projects/trinity"
alias gotorabbitmatcher="cd ~/Projects/rabbit_matcher"
alias gotoprojects="cd ~/Projects"
alias openall="cd ~/Projects && st ."

# project aliases
alias st-trn="gototrinity && OVERMIND_SOCKET=tinirty_app_sock overmind s -f ./Procfile"
alias trn-rc="gototrinity && bundle exec rails c"
alias trn-migrate="gototrinity && bundle exec rails db:migrate"
alias trn-rollback="gototrinity && bundle exec rails db:rollback"

# git aliases
alias gtf='git log --reverse --date=short --pretty=format:"(%ad) [%an] %s" | head -1'
alias gbd="git branch -D"
alias gbl="git branch -l"
alias gbr="git branch -r"
alias gba="git branch -a"
alias gbrn="git branch -m"
alias gblr="git for-each-ref --sort=-committerdate refs/remotes/ --format=\"%(objectname:short) (%(committerdate:short)) [%(authorname)] %(refname:short)\""
alias gbll="git for-each-ref --sort=-committerdate refs/heads/ --format=\"%(objectname:short) (%(committerdate:short)) [%(authorname)] %(refname:short)\""
alias gct="git commit"
alias gsct="git commit -S"
alias gmrg="git merge"
alias gcm="git commit -m"
alias gscm="git commit -S -m"
alias gcrn="git commit --amend -m"
alias gscrn="git commit -S --amend -m"
alias gca="git add -A && git commit -m"
alias gsca="git add -A && git commit -S -m"
alias gco="git checkout"
alias gcb="git checkout -b"
alias grb="git rebase"
alias grbm="git rebase master"
alias gft="git fetch"
alias gcl="git clone --recursive"
alias gst="git status"
alias gdfc="git diff --cached"
alias gdf="git diff"
alias gaa="git add ."
alias gad="git add"
alias gsync="git fetch --all --prune && git pull origin master"
alias gclean="git clean -f -d"
alias gswipe="git reset --soft HEAD^"
alias grs="git reset HEAD"
alias gunreset="git reset 'HEAD@{1}'"
alias gpl="git pull origin"
alias gpsho="git push origin"
alias gpshfo="git push --force origin"
alias gpsh="git push"
alias gpsht="git push --tags"
alias glg="git log --graph --date=short --pretty=format:\"%C(yellow)%h%C(reset) (%C(cyan)%ad%C(reset)) [%C(green)%an%C(reset)] %C(white)%s%C(reset)\""
alias glgp="git log -p"
alias grm="git rm"
alias grv="git remote -v"
alias gtl="git tag -l"
alias gtd="git tag -d"
alias gtg="git tag"
alias gstg="git tag -s"
alias gtv="git tag -v"
alias gconfed="st ~/.gitconfig"
alias ggnored="st ~/.gitignore"
alias gdfstat="git diff --stat master"
alias glas="git config --get-regexp alias"
alias gitmans="git shortlog --summary --numbered"

# initialize rbenv (ruby version manager)
eval "$(rbenv init -)"
alias rbenv-upgrade="brew upgrade rbenv ruby-build"

# bundler aliases
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias bircop="bundle exec rubocop"
alias bircopp="bundle exec rubocop --parallel"
alias bircopa="bundle exec rubocop -a \$(git diff master --name-only --diff-filter=AMCRU | grep -E \".*\.rb\")"
alias birspec="bundle exec rspec"
alias brout="bundle outdated"
alias brake="bundle exec rake"
alias brails="bundle exec rails"

# rails aliases
alias brc="bundle exec rails c"

# zsh aliases
alias zshreload="source ~/.zshrc"
alias zshedit="st ~/.zshrc"
alias zshupgrade="upgrade_oh_my_zsh"

# gpg
alias show-gpg-keys="gpg --list-secret-keys --keyid-format LONG"
alias export-gpg-pub-key="gpg --armor --export" # for example ("rsa2048/0123456A01A0A0AB0"): export-gpg-pub-key 0123456A01A0A0AB0
alias edit-gpg-key="gpg --edit-key" # for example ("rsa2048/0123456A01A0A0AB0"): edit-gpg-key 0123456A01A0A0AB0

# initialize NVM (nodejs version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# use .nvmrc everywhere in ZSH!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"
  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use > /dev/null 2>&1
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default > /dev/null 2>&1
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc


# install/reinstall nvm
alias nvm-install="curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash"

# initialize kiex (elixir version manager)
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

# initializ TravisCI cli tool
[ -f /Users/DaiveR/.travis/travis.sh ] && source /Users/DaiveR/.travis/travis.sh

# initialize FZF tool (fuzzy finder)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# initialize rust lang environment
source $HOME/.cargo/env
# rust aliases
alias rustdoc="rustup doc"
alias rustupdate="rustup update"

# register global editor
export EDITOR="/usr/bin/vim"

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Corrects errors in previous console command
eval $(thefuck --alias)

# ZSH spaceship prompt settings
SPACESHIP_PROMPT_ORDER=(
  time
  user
  host
  dir
  git
  exec_time
  line_sep
  jobs
  exit_code
  char
)
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_PROMPT_PREFIXES_SHOW=true
SPACESHIP_PROMPT_SUFFIXES_SHOW=true
SPACESHIP_TIME_SHOW=false
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_SUFFIX=" => "
SPACESHIP_USER_COLOR=green
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_SUFFIX=" "
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_SYMBOL=" "
SPACESHIP_GIT_BRANCH_SHOW=true
SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_RUBY_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_EXIT_CODE_SHOW=false
SPACESHIP_CHAR_SYMBOL="➜ "
