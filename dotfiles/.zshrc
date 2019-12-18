export PATH="$PATH:/Users/daiver/.local/bin"
export ZSH=/Users/daiver/.oh-my-zsh
ZSH_THEME="spaceship"
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true
PROMPT_EOL_MARK=""
plugins=(sublime osx docker postgres gpg-agent)
source $ZSH/oh-my-zsh.sh

. ~/.zsh/aliases.sh
. ~/.zsh/dashdoc.sh
. ~/.zsh/services.sh
. ~/.zsh/ssh.sh
. ~/.zsh/programming.sh
. ~/.zsh/editor.sh
. ~/.zsh/fzf.sh
. ~/.zsh/git.sh
. ~/.zsh/gpg.sh
. ~/.zsh/nvm.sh
. ~/.zsh/pyenv.sh
. ~/.zsh/rbenv.sh
. ~/.zsh/rust.sh
. ~/.zsh/travis.sh
. ~/.zsh/zsh.sh
. ~/.zsh/prompt.sh
. ~/.zsh/ansible.sh
. ~/.zsh/functions.sh
. ~/.zsh/asdf.sh
