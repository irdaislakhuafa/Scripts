alias grph='git log \
--all \
--decorate \
--oneline \
--graph'

alias grphp='grph --pretty'
alias gadd='git add'
alias gout='git checkout'
alias gmit='git commit'
alias gmrg='git merge'
alias gmrgff='gmrg --ff'
alias gmrgnff='gmrg --no-ff'
alias gbr='git branch'
alias gps='git push'
alias gam='git add --all && gmit -am'
alias gdif='git diff'
alias gbra='gbr -a'
alias gamit='gadd . && gmit'
alias gamitp='gamit && gps'
alias glone="git clone"
alias gst='git status'
alias gmed='git commit --amend'
alias gfap='git fetch --all --prune'
alias gpl='git pull'
alias gsdrop='git stash && git stash drop stash@\{0\}'
alias gslect='git stash list | fzf --reverse | cut -d ":" -f 1'
gsply() {
	selected="$(gslect)"
	if [ "$selected" = "" ]; then
		echo "Nothing do"
	else
		git stash apply $selected
	fi
}

alias gprsc='gh pr status -c'
alias gouts='gout $(gbr | fzf)'
alias gbrd='gbr -D $(gbr | fzf)'
alias ghprb='gh pr create -B $(gbr | fzf)'
alias gpsur='gps -u $(git remote | fzf)'
