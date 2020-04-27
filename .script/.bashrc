#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --human-readable --time-style=long-iso'
alias cls='echo -ne "\033c"'  
alias cd..='cd ..'
alias shn='shutdown now'

PS1=' \$ > '

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
