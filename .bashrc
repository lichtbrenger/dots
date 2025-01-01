# .bashrc

# prompt
PS1=' \[\e[38;5;218m\]$? \W -> \[\e[0m\]'

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

export TERM='xterm-256color'


if [[ $(tty) = /dev/tty1 ]]; then
  startx
fi

# https://www.cyberciti.biz/faq/linux-unix-generating-passwords-command/
pg() { 
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs 
}
