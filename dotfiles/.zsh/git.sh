alias gcmc="git add -A && git commit -m 'cheburek'"
alias gblank='touch blank-file && git add blank-file && git commit -m "add-blank-file-for-empty-commit" && git revert HEAD -n && git commit -m "remove-blank-file-from-empty-commit"'
alias grv="git revert"
alias grvh="git revert HEAD"
alias gitfirst='git log --reverse --date=short --pretty=format:"%h (%ad) [%an] %s" | head -1'
alias gbd="git branch -D"
alias gbl="git branch -l"
alias gbr="git branch -r"
alias gbcurr="git rev-parse --abbrev-ref HEAD"
alias gba="git branch -a"
alias gbrn="git branch -m"
alias gblr="git for-each-ref --sort=-committerdate refs/remotes/ --format=\"%(objectname:short) (%(committerdate:short)) [%(authorname)] %(refname:short)\""
alias gbll="git for-each-ref --sort=-committerdate refs/heads/ --format=\"%(objectname:short) (%(committerdate:short)) [%(authorname)] %(refname:short)\""
alias gct="git commit"
alias gsct="git commit -S"
alias gmrg="git merge"
alias gmrgm="git merge master"
alias gmrga="git merge --abort"
alias gmrga="git merge --abort"
alias gcm="git commit -m"
alias gca="git add -A && git commit -m"
alias gscm="git commit -S -m"
alias gcrn="git commit --amend -m"
alias gscrn="git commit -S --amend -m"
alias gsca="git add -A && git commit -S -m"
alias gco="git checkout"
alias gcom="git checkout master"
alias gcr="git checkout -"
alias gcb="git checkout -b"
alias grb="git rebase"
alias grbm="git rebase master"
alias grba="git rebase --abort"
alias gft="git fetch"
alias gcl="git clone --recursive"
alias gst="git status"
alias gsth="git stash"
alias gsta="git stash apply"
alias gdfc="git diff --cached"
alias gdf="git diff"
alias gdfm="git diff master"
alias gaa="git add ."
alias gad="git add"
alias gsync="git fetch --all --prune && git pull origin master"
alias gclean="git clean -f -d"
alias gswipe="git reset --soft HEAD^"
alias grs="git reset HEAD"
alias gunreset="git reset 'HEAD@{1}'"
alias gpl="git pull origin"
alias gplm="git pull origin master"
alias gpsho="git push origin"
alias gpshb='git push origin $(git branch --show-current)'
alias gpshc="git push cadolabs"
alias gpshfo="git push --force origin"
alias gpshf="git push --force"
alias gpsh="git push --set-upstream"
alias gpsht="git push --tags"
alias gpshft="git push --force --tags"
alias glg="git log --graph --date=short --pretty=format:\"%C(yellow)%h%C(reset) (%C(cyan)%ad%C(reset)) [%C(green)%an%C(reset)] (%C(red)%ae%C(reset)) %C(white)%s%C(reset)\""
alias glgp="git log -p"
alias glgm="git log"
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
alias grkn='git commit --amend --author="Rustam Ibragimov <iamdaiver@icloud.com>'
alias gempty="git commit --allow-empty -m 'empty-commit'"
