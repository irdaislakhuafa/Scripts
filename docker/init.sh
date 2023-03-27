alias docker='docker'
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
alias doexecd='docker exec -d'
alias dosearch='docker search'
alias dopull='docker pull'
alias dologs='docker logs'
alias donls='docker network ls'
alias donconn='docker network connect'
alias donins='docker network inspect'
alias doclean='docker volume prune && docker network prune && docker builder prune &&  docker container prune && docker image prune'
alias docom='docker compose'
alias dorunit="docker run -it  -v \"/tmp:/tmp\" -e DISPLAY=$DISPLAY -v \"/dev:/dev\" -v \"/run/user/1000/:/run/user/1000/\" -e PULSE_SERVER=unix:/run/user/1000/pulse/native"
alias dorunitd="dorunit -d"
alias dorunitu="dorunit -u 1000:1000"
alias dorunitf='dorunit -v "$(pwd):/files"'
alias dorunitdf='dorunitd -v "$(pwd):/files"'

dopslect() {
	selected="$(docker ps | FZF_DEFAULT_OPTS='' fzf --reverse -m 1000 | awk '{print $1}')"
	echo $selected
}

dopsalect() {
	selected="$(docker ps -a | FZF_DEFAULT_OPTS='' fzf --reverse -m 1000 | awk '{print $1}')"
	echo $selected
}

dopsx() {
	selected="$(dopslect)"

	if [ "$selected" = "" ]; then
		echo "Nothing do";
	else
		selected=( $(echo $selected) )
		for i in $selected; do
			$@ $i &!
		done
	fi
}

dopsax() {
	selected="$(dopsalect)"

	if [ "$selected" = "" ]; then
		echo "Nothing do";
	else
		selected=( $(echo $selected) )
		for i in $selected; do
			$@ $i &!
		done
	fi
}

alias dostopop='dopsx docker container stop'
alias dostartop='dopsax docker container start'
alias dormop='dopsax docker container rm'

docker_image_select() {
	selected="$(docker images | fzf -m 1000)"
	echo $selected
}

