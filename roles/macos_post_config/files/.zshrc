export ZSH=/Users/DaiveR/.oh-my-zsh
ZSH_THEME="spaceship"
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true
plugins=(sublime osx docker postgres gpg-agent)
source $ZSH/oh-my-zsh.sh

. ~/.zsh/aliases.sh
. ~/.zsh/ssh.sh
. ~/.zsh/bundler.sh
. ~/.zsh/editor.sh
. ~/.zsh/fzf.sh
. ~/.zsh/git.sh
. ~/.zsh/gpg.sh
. ~/.zsh/nvm.sh
. ~/.zsh/project_aliases.sh
. ~/.zsh/pyenv.sh
. ~/.zsh/rbenv.sh
. ~/.zsh/rust.sh
. ~/.zsh/travis.sh
. ~/.zsh/zsh.sh
