alias eacc='nvim /media/My_Drive/Kelas\ Terbuka/Account.Me'
alias etri='nvim ~/.config/trizen/trizen.conf'

FZF_DEFAULT_OPTS_NVIM='--preview "bat --style=numbers --color=always --line-range :500 {}" --reverse --preview-window=down:50%'

# edit pacman config
alias epac='edit /etc/pacman.conf'
alias nvim='nvim -c "set buftype="'

# set default editor
export VISUAL=nvim;
export EDITOR=nvim;

alias ide=$EDITOR
alias edit='doas nvim'

# anekapay projects
anekapay() {
	PROJECTS_DIR="/media/Projects/Anekapay/Repository"
	project=$(ls "$PROJECTS_DIR" | fzf --reverse)

	cd "$PROJECTS_DIR/$project" && nvim
}
