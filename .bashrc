#vim like keybinds
set -o vi

#rm command
if [ -n "$PS1" ] ; then
	rm () 
	{ 
		ls -FCsd --color=auto $@ --color=auto -aU 
		echo 'remove[n/Y]? ' | tr -d '\012'; read
		if [ "_$REPLY" = "_Y" ]; then
			/bin/rm "$@"
		else
			echo '(cancelled)'
		fi
	}
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
	PS1='[\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00m\]] \[\033[00;35m\]$(parse_git_branch)\[\033[00m\]\n$ '	
else
	PS1='\u@\h \W\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

source "$HOME/.cargo/env"

export QT_QPA_PLATFORMTHEME=qt5ct

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH+=":~/.local/bin"
PATH+=:/home/jeremy/git/emsdk
PATH+=:/home/jeremy/git/emsdk/upstream/emscripten
PATH+=:/home/jeremy/git/emsdk/node/14.18.2_64bit/bin

EMSDK=/home/jeremy/git/emsdk
EMSDK_NODE=/home/jeremy/git/emsdk/node/14.18.2_64bit/bin/node
