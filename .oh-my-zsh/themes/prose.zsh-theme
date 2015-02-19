# Git Prompt info
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# HG Prompt Info

function hg_current_branch() {
  if [ -d .hg ]; then
    echo hg:$(hg branch)
  fi
}

function parse_hg_dirty() {
  if [[ -n $(hg status -mard . 2> /dev/null) ]]; then
    echo "$ZSH_THEME_HG_PROMPT_DIRTY"
  else
    echo "$ZSH_THEME_HG_PROMPT_CLEAN"
  fi
}

function hg_prompt_info() {
  if [ -d .hg ]; then
    echo "$(parse_hg_dirty)$ZSH_THEME_HG_PROMPT_PREFIX$(hg branch)$ZSH_THEME_HG_PROMPT_SUFFIX"
  fi
}

# Current PWD

function get_pwd() {
  print -D "$fg[white]`basename $PWD`$reset_color"
}

#Error msg

function error_status {
  if [ $? -eq 0 ]; then
    echo "☺"
  else
    echo "☹"
  fi
}

# Battery

function battery_charge() {
  if [ -e /usr/local/bin/battery.py ]
  then
    echo `python /usr/local/bin/battery.py`
  else
    echo ''
  fi
}

function put_spacing() {
  local hg=$(hg_prompt_info)
  if [ ${#hg} != 0 ]; then
    ((hg=${#hg} - 10))
  else
    hg=0
  fi

  local git=$(git_prompt_info)
  if [ ${#git} != 0 ]; then
    ((git=${#git} - 10))
  else
    git=0
  fi

  local bat=$(battery_charge)
  if [ ${#bat} != 0 ]; then
    ((bat = ${#bat} - 18))
  else
    bat=0
  fi

  local termwidth
  (( termwidth = ${COLUMNS} - 3 - ${#HOST} - ${#$(get_pwd)} - ${bat} - ${git} - ${hg} ))

  local spacing=""
  for i in {1..$termwidth}; do
    spacing="${spacing} "
  done
  echo $spacing
}

function precmd() {
print -rP '$fg[blue]%m: $(get_pwd)$(put_spacing)$(git_prompt_info)$(hg_prompt_info)'
}

PROMPT='%{$fg[magenta]%}$(error_status) >%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"

# Mercurial Theme vars and functions
ZSH_THEME_HG_PROMPT_PREFIX="[hg:"          # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_HG_PROMPT_SUFFIX="]$reset_color"             # At the very end of the prompt
ZSH_THEME_HG_PROMPT_DIRTY="$fg[magenta]+"              # Text to display if the branch is dirty
ZSH_THEME_HG_PROMPT_CLEAN="$fg[green]"               # Text to display if the branch is clean
