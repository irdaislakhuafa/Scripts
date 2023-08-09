spring-deps-list() {
	list=( $(spring init --list | fzf -m | cut -d "|" -f 2) )
	deps=$(echo $list | sed s/" "/","/g)
	echo $deps
}
