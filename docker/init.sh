alias docker='doas docker'
alias dops='docker ps'
alias dopsa='dops --all'
alias dostart='docker start'
alias dostop='docker stop'
alias docreate='docker create'
alias dorm='docker rm'
alias dormi='docker rmi'
alias doi='docker images'
alias dorun='docker run'
alias doexecit='docker exec -it'
alias dosearch='docker search'
alias dopull='docker pull'
alias dologs='docker logs'
alias donls='docker network ls'
alias donconn='docker network connect'
alias donins='docker network inspect'

alias doclean='docker volume prune && docker network prune && docker builder prune &&  docker container prune && docker image prune'
