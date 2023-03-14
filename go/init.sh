export GOME="github.com/irdaislakhuafa"
export PATH="/home/artix/go/bin:$PATH"


gqlgenv() {
	# get current graphql version
	gql="$(cat go.mod | grep gqlgen)"
	version=$(echo "$gql" | cut -d " " -f 2)
	
	if [ "$version" = "" ]; then
		version="latest"
	fi

	gqlgenversion="github.com/99designs/gqlgen@$version"
	echo "$gqlgenversion"

}

alias grun='go run'
alias gqlgen='go run $(gqlgenv)'
