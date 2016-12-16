# go

alias goapp='cd ~/Dev/google-cloud-sdk/platform/google_appengine/goapp'

alias dev_path='cd ~/Dev'
alias bc='cd ~/Projects/business-cloud'
alias extranet_angular='/Users/Irenicus/Projects/business-cloud/extranet_angular'
alias extranet_core='/Users/Irenicus/Projects/business-cloud/extranet_core'
alias run_extranet='goapp serve dispatch.yaml backend/extranet/app.yaml backend/apps/drivetaker/app.yaml frontend/app.yaml'

# sublime text
alias subl_dir='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User'

alias projects='cd ~/Projects'

#Clients

alias voyages='cd /Users/Irenicus/Projects/Clients/Voyages-SNCF'

alias club='cd /Users/Irenicus/Dev/Clients/club_med'
alias b2c='cd /Users/Irenicus/Dev/Clients/club_med/cm-b2c'
alias graphql='cd /Users/Irenicus/Dev/Clients/club_med/cm-graphql'
alias cms='cd /Users/Irenicus/Dev/Clients/club_med/cm-b2c-cms-config'
alias update_heroku='heroku config:set cms.content=b3c-pr-3091 -a cm-b2c-pr-3097'

# NPM
alias i="npm i"
alias w="npm run watch"
alias t="npm run test"
alias l="npm run lint"
export NPM_TOKEN="1db15f33-214c-4e59-9ea8-ed7ed0a5ca2e"


# NAS

alias nas='ssh root@irenicus.fr -p 25'
alias kimsufi-root='ssh root@151.80.38.34'
alias kimsufi='ssh irenicus@151.80.38.34'

alias git-purge="git fetch --all -p; git branch -vv | grep \": gone]\" | awk '{ print $1 }' | xargs -n 1"

# Editor

export EDITOR=vim

# Go PATH
export GOPATH=/Users/Irenicus/Dev/go_path

# For godoc
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="$PATH:$GOPATH/bin"

#Quicklook alias

export PATH="$PATH:/Users/Irenicus/.scripts"

export DEFAULT_USER="Irenicus"

# NPM

if echo $PATH | grep node_modules/.bin >/dev/null 2>/dev/null; then
   true
else
  export PATH="$PATH:node_modules/.bin"
fi

# Clubmed

export NODE_TLS_REJECT_UNAUTHORIZED=0
export MIGRATION_LOCALE=zh-CN

alias run_migration_integ='npm run run-migration -- \
--user "admin" \
--password "toto" --contentId "b2c" \
--apiUrl "https://cms.integ.clubmed.com/v1/" \
--cmsHost "cms.integ.clubmed.com" \
--redirectUri "https://cms.integ.clubmed.com/app/" \
--oauthHost "auth.integ.clubmed.com" \
--clientId "da3ae41a-bec8-4bf8-940d-aaa1e6e61f0e" \
--backup "/Users/Irenicus/backup"'


export API_CONFIG_PATH="/Users/Irenicus/Dev/Clients/club_med/api/digital-api/configuration_developper.json"

# Docker
# Remove all images which has no name

alias rmi="docker images -q | xargs docker rmi"
