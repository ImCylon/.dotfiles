# ~/.zsh_ignore_history.sh

HIST_IGNORE_PATTERN="^(gpg|nvim -u)"

preexec() {
  if [[ "$1" =~ $HIST_IGNORE_PATTERN ]]; then
    HISTNO=0
  fi
}

