export PATH="/opt/homebrew/bin:$PATH:/Users/daiver/.local/bin:/opt/homebrew/sbin:/usr/local/sbin:/usr/local/bin:/usr/local/opt/rabbitmq/sbin"
export PATH="$PATH:/opt/homebrew/opt/postgresql@16/bin"
export ZSH=/Users/daiver/.oh-my-zsh
ZSH_THEME="spaceship"
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true
PROMPT_EOL_MARK=""
plugins=(sublime macos docker postgres gpg-agent zsh-autosuggestions kubectl)
source $ZSH/oh-my-zsh.sh

. ~/.zsh/projects.sh
. ~/.zsh/brew.sh
. ~/.zsh/dashdoc.sh
. ~/.zsh/services.sh
. ~/.zsh/ssh.sh
. ~/.zsh/ruby.sh
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
. ~/.zsh/rubymotion.sh
. ~/.zsh/solargraph.sh
. ~/.zsh/sublime.sh
. ~/.zsh/docker.sh
. ~/.zsh/postgresql.sh
. ~/.zsh/scala.sh
. ~/.zsh/terraform.sh
. ~/.zsh/daily.sh

if [ -r /Users/daiver/.workspace.sh ]; then
  . /Users/daiver/.workspace.sh
fi
