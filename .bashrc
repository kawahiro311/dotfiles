# alias
alias emacs='/usr/local/Cellar/emacs/25.3/bin/emacs'

# fzf
## history
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
builtin bind -x '"\C-x1": fh';
builtin bind '"\C-r": "\C-x1\e^\er"'
