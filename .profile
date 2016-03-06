# go

alias goapp=~/Dev/google-cloud-sdk/platform/google_appengine/goapp

alias dev_path='cd ~/Dev'
alias bc='cd ~/Projects/business-cloud'
alias extranet_angular='/Users/Irenicus/Projects/business-cloud/extranet_angular'
alias extranet_core='/Users/Irenicus/Projects/business-cloud/extranet_core'
alias run_extranet='goapp serve dispatch.yaml backend/extranet/app.yaml backend/apps/drivetaker/app.yaml frontend/app.yaml'

# sublime text
alias subl_dir='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User'

alias projects='cd ~/Projects'
alias freelance_academy='cd ~/Projects/freelance_academy/'
alias voyages='cd /Users/Irenicus/Projects/Clients/Voyages-SNCF'

# NAS

alias nas='ssh root@irenicus.fr -p 25'

# Go PATH
export GOPATH=/Users/Irenicus/Dev/go_path

# For godoc
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="$PATH:$GOPATH/bin"

# Docker
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/Irenicus/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"
# Run this command to configure your shell:
eval "$(docker-machine env default)"

eval "$(rbenv init -)"

#Quicklook alias

export PATH="$PATH:/Users/Irenicus/.scripts"

if echo $PATH | grep node_modules/.bin >/dev/null 2>/dev/null; then
   true
else
  export PATH="$PATH:node_modules/.bin"
fi
