# Preinstallation Requirements


##1. Install brew
export HOMEBREW_FORCE_BREWED_CURL=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

##1.1. Setup PATH variable (nano ~/.zshrc)

PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/opt/homebrew/bin:$HOME/.pyenv/bin:$HOME/.local/bin"

##2. Intall pyenv
brew install pyenv

##2.1. Setup PATH variable for pyenv (already configured)

##2.2. Setup pyenv init (nano ~/.zshrc)
eval "$(pyenv init -)"

##3. Install python
pyenv install 3.13.0 (latest at this moment)

##3.1. Setup python version (nano ~/.python-version)
3.13.0 (at this moment)

##4. Setup pipx
python -m pip install --user pipx

##4.1. Setup pipx path ($HOME/.local/bin). Already configured

##4.2. Chech pipx path config
pipx ensurepath

##5. SETUP ANSIBLE
pipx install --include-deps ansible

##5.x. Ansible Upgrade (for future updates)
pipx upgrade ansible

##5.x. Add autocompletions
pipx inject --include-apps ansible argcomplete

##5.1. Check ansible accessability
ansible --version

##6. Install Java Development Kit
https://www.oracle.com/java/technologies/downloads/

##6.1. Check Java Accesibility
javac --version

##7. Install necessary utils for the next macos setup
brew install coreutils curl git

##7. Install Go lang
https://go.dev/doc/install


##7.1. Check Go Accessibility
