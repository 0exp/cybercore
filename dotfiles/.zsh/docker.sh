fpath=(/Users/daiver/.docker/completions $fpath)
autoload -Uz compinit
compinit

alias dps="docker ps"
alias ddf="docker diff"
alias dlg="docker logs"
alias dck-show-exited="docker ps -aq -f status=exited"
alias dck-stop-exited="docker rm -v $(docker ps -aq -f status=exited)"
alias docker-registry-start="docker run -d -p 5234:5000 --restart=always --name docker-registry-container registry:latest"
alias docker-registry-stop="docker container stop docker-registry-container"
alias docker-docs-start="docker run -d --rm --name docker-docs-container -p 8089:4000 docker-docs"
alias docker-docs-stop="docker container stop docker-docs-container"
