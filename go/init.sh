export GOME="github.com/irdaislakhuafa"
export PATH="/home/artix/go/bin:$PATH"

# get current graphql version
gql="$(cat go.mod | grep gqlgen)"
version=$(echo "$gql" | cut -d " " -f 2)
gqlgen="github.com/99designs/gqlgen@$version"

alias grun='go run'
alias gqlgen="go run $gqlgen"
