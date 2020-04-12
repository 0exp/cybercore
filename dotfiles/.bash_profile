# initialize ruby env
eval "$(rbenv init -)"

# initialize python env
eval "$(pyenv init -)"

# additional paths
export PATH="$PATH:/Users/exclusive/.local/bin"

# enable fzf
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi
# fzf autocomplation
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.bash" 2> /dev/null
# fzf key bindings
source "/usr/local/opt/fzf/shell/key-bindings.bash"
# fzf with bat-coloration
alias fzfp="fzf --preview 'bat {}'"

# configure prompt message
# \u - username
# \h - host
# \w - full directory path
export PS1="\u@\h:\w\n> "
export CLICOLOR=1

alias gcurr="git rev-parse --abbrev-ref HEAD" # show current branch name
alias bashreload="source ~/.bash_profile"
alias st="subl"

# sublime console support
# make sure /usr/bin/locale exists (mkdir -p /usr/locale/bin if not)
# ln -sv "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
