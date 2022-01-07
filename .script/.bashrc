#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTTIMEFORMAT="%Y-%m-%d %T  "
export I3_BLOCKS_CONTRIB_SCRIPT=~/.config/i3blocks-contrib
export I3_BLOCKS_CUSTOM_SCRIPT=~/.config/i3blocks-custom
export PATH=~/.bin:~/.local/bin:/usr/lib/node_modules/node/bin:$PATH
export FZF_DEFAULT_COMMAND="rg --files"
export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0"

#systemctl --user import-environment PATH

alias ls='ls --color=auto --human-readable --time-style=long-iso'
alias cls='echo -ne "\033c"'  
alias cd..='cd ..'
alias shn='wsl.exe --shutdown'
alias ping='ping.exe -t'

PS1='\u\$ > '

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
