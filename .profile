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

alias club='cd /Users/Irenicus/Projects/Clients/club_med'

# NPM
alias i="npm i"
alias w="npm run watch"
alias rmc="rm -rf ./node_modules/@clubmed/components"
export NPM_TOKEN="1db15f33-214c-4e59-9ea8-ed7ed0a5ca2e"

# NAS

alias nas='ssh root@irenicus.fr -p 25'
alias kimsufi-root='ssh root@151.80.38.34'
alias kimsufi='ssh irenicus@151.80.38.34'


# Editor

export EDITOR=/usr/local/bin/atom

# Go PATH
export GOPATH=/Users/Irenicus/Dev/go_path

# For godoc
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="$PATH:$GOPATH/bin"

#Quicklook alias

export PATH="$PATH:/Users/Irenicus/.scripts"

# NPM

if echo $PATH | grep node_modules/.bin >/dev/null 2>/dev/null; then
   true
else
  export PATH="$PATH:node_modules/.bin"
fi
