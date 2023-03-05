export JIRA_API_TOKEN="0DaTvX5olAyhOUS79wQr76B9"
export JIRA_ME="$(jira me)"

jrprolist() {
	project="$(jira project list | fzf --reverse | awk '{print $1}')"
	echo $project
}

jrisslist() {
	project="$(jrprolist)"
	issue="$(jira issue list -p $project  -a $JIRA_ME --plain --columns KEY,TYPE,SUMMARY,PRIORITY,STATUS,ASSIGNEE,REPORTER,RESOLUTION,CREATED,UPDATED | fzf --reverse | awk '{print $1}')"
	echo $issue
}

jrissx() {
	task="$(jrisslist)"
	if [ "$task" = "" ]; then
		echo "Nothing do"
	else
		$@ $task
	fi
}

alias jrissmv='jrissx jira issue move'
alias jrissls='jira issue list -p $(jrprolist) -a $JIRA_ME '
alias jrissv='jrissx jira issue view'
