# Execute modules in subdirectory
BASE="$HOME/.bash"
load_all_files_in() {
  if [ -d "$BASE/$1" ]; then
    for file in "$BASE/$1"/*.sh; do
      source "$file"
    done
  fi
}

# Cross-shell aliases
[[ -f ~/.aliases ]] && source ~/.aliases

load_all_files_in

# Load default profile

[[ -f ~/.profile ]] && source ~/.profile

# Local config
[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local