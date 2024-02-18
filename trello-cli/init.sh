TRELLO_AC_ZSH_SETUP_PATH=/home/artix/.cache/trello-cli/autocomplete/zsh_setup && test -f $TRELLO_AC_ZSH_SETUP_PATH && source $TRELLO_AC_ZSH_SETUP_PATH # trello autocomplete setup

alias trcli='trello'

function trcli-board-select-name() {
	board=$(trcli board:list --format=json | jq ".[].name" | fzf | cut -d "\"" -f 2)
	echo -n $board
}

function trcli-board-select-id() {
	board=$(trcli board:list --format=json | jq ".[] | \"\(.id) | \(.name)\"" | fzf | cut -d "|" -f 1 | cut -d "\"" -f 2)
	echo -n $board
}

function trcli-list-select-id() {
	board=$(trcli-board-select-name)
	list=$(trcli list:list --board="$board" --format=json | jq '.[] | "\(.id) | \(.name)"' | fzf | cut -d '"' -f 2 | cut -d '|' -f 1 | cut -d ' ' -f 1)
	echo -n $list
}

# function trcli-list-select-name() {
# 	board=$(trcli-board-select-name)
# 	list=$(trcli list:list --board="$board" --format=json | jq '.[] | "\(.name)"' | fzf | cut -d '"' -f 2)
# 	echo -n $list
# }

# $1 = board
function trcli-list-select-name() {
	board="$1"
	if [ "$board" = "" ]; then
		board=$(trcli-board-select-name)
	fi
	list="$(trcli list:list --board="$board" --format=json | jq '.[] | "\(.name)"' | fzf | cut -d '"' -f 2)"
	echo -n $list
}

function trcli-card-list() {
	board="$(trcli-board-select-name)"
	list="$(trcli-list-select-name $board)"
	card=$(trcli card:list --board="$board" --list="$list" $@)
	echo -n $card
}
