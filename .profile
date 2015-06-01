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

alias nas='ssh root@irenicus.fr'

# Go PATH
export GOPATH=/Users/Irenicus/Dev/go_path

# For godoc
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="$PATH:$GOPATH/bin"

# Docker

export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/Irenicus/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

#Quicklook alias

export PATH="$PATH:/Users/Irenicus/.scripts"

if echo $PATH | grep node_modules/.bin >/dev/null 2>/dev/null; then
   true
else
  export PATH="$PATH:node_modules/.bin"
fi
