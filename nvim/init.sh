alias eacc='nvim /media/My_Drive/Kelas\ Terbuka/Account.Me'
alias etri='nvim ~/.config/trizen/trizen.conf'

# edit pacman config
alias epac='edit /etc/pacman.conf'

# set default editor
export VISUAL=nvim;
export EDITOR=nvim;
alias ide=$EDITOR

# anekapay projects
anekapay() {
	PROJECTS_DIR="/media/Projects/Anekapay/Repository"
	project=$(ls "$PROJECTS_DIR" | fzf --reverse)

	cd "$PROJECTS_DIR/$project" && nvim
}
