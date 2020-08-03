## Aliases

# Docker
# Remove all images which has no name

alias rmi="docker images -q | xargs docker rmi"

# NPM
alias i="npm i"
alias w="npm run watch"
alias t="npm run test"
alias l="npm run lint"

# SSH

alias kimsufi-root='ssh root@151.80.38.34'
alias kimsufi='ssh irenicus@151.80.38.34'

alias git-purge="git fetch --all -p; git branch -vv | grep \": gone]\" | awk '{ print $1 }' | xargs -n 1"

## Exports
# Editor

export EDITOR=atom

#Quicklook alias

export PATH="$PATH:/Users/Irenicus/.scripts"

export DEFAULT_USER="Irenicus"

# NPM

if echo $PATH | grep node_modules/.bin >/dev/null 2>/dev/null; then
   true
else
  export PATH="$PATH:node_modules/.bin"
fi
