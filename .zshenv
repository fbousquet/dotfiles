#Path Settings

# User configuration

# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8


# Profile loading
##################################################################

source ~/.profile

man() {
  env \
  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
  LESS_TERMCAP_md=$(printf "\e[1;31m") \
  LESS_TERMCAP_me=$(printf "\e[0m") \
  LESS_TERMCAP_se=$(printf "\e[0m") \
  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
  LESS_TERMCAP_ue=$(printf "\e[0m") \
  LESS_TERMCAP_us=$(printf "\e[1;32m") \
  man "$@"
}

cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

cat() {
    local out colored
    out=$(/bin/cat $@)
    colored=$(echo $out | pygmentize -f console -g 2>/dev/null)
    [[ -n $colored ]] && echo "$colored" || echo "$out"
}


# Preferred editor for local and remote sessions
##################################################################
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
##################################################################
# export ARCHFLAGS="-arch x86_64"

# ssh
##################################################################
# export SSH_KEY_PATH="~/.ssh/dsa_id"
