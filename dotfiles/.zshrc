export PATH="$PATH:/Users/exclusive/.local/bin:/usr/local/sbin:/usr/local/opt/rabbitmq/sbin"
export ZSH=/Users/exclusive/.oh-my-zsh
ZSH_THEME="spaceship"
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true
PROMPT_EOL_MARK=""
plugins=(sublime osx docker postgres gpg-agent zsh-autosuggestions)
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
. ~/.zsh/mc.sh
. ~/.zsh/postgresql.sh
. ~/.zsh/scala.sh
. ~/.zsh/terraform.sh
. ~/.zsh/daily.sh

if [ -r /Users/exclusive/.workspace.sh ]; then
  . /Users/exclusive/.workspace.sh
fi
