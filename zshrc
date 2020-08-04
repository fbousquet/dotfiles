# Execute modules in subdirectory
BASE="$HOME/.zsh"
load_all_files_in() {
  if [ -d "$BASE/$1" ]; then
    for file in "$BASE/$1"/*.zsh; do
      source "$file"
    done
  fi
}

# Cross-shell aliases
[[ -f ~/.aliases ]] && source ~/.aliases


load_all_files_in before
load_all_files_in ""
load_all_files_in after


# Search history with cursor up/down
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search


# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local