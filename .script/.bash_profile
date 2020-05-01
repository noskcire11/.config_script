#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export TERMINAL="termite"
export BROWSER="google-chrome-stable"
export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTTIMEFORMAT="%Y-%m-%d %T  "
export TF_CPP_MIN_LOG_LEVEL=2
export I3_BLOCKS_CONTRIB_SCRIPT=~/.config/i3blocks-contrib
export I3_BLOCKS_CUSTOM_SCRIPT=~/.config/i3blocks-custom
export PATH=~/.bin:~/.local/bin:$PATH

systemctl --user import-environment PATH

if [[ "$(tty)" == '/dev/tty1' ]]; then
    exec startx
fi
