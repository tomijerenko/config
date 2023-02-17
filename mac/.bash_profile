# Config
export BASH_SILENCE_DEPRECATION_WARNING=1
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'

# Man colors
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;34m'    # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline

# Aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ll='ls -la'
alias la='ls -A'

# Path includes
. "$HOME/.cargo/env"
export PATH=$PATH:/opt/homebrew/bin
