# Config
export BASH_SILENCE_DEPRECATION_WARNING=1
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'

# Man colors
export LESS_TERMCAP_mb=$'\e[1;31m'		 # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'		 # begin blink
export LESS_TERMCAP_so=$'\e[01;34m'		 # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'		 # begin underline
export LESS_TERMCAP_me=$'\e[0m'				 # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'				 # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'				 # reset underline

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
alias k='kubectl '
alias randomstring='dd if=/dev/urandom bs=50 count=1 status=none | base64'
alias shaall='find . -type f -exec shasum -a 256 {} \;'
alias k9s='k9s -A'
alias ga='git add -A'
alias gc='git commit -m '
alias gp='git push'
alias gacp="git status && git add -A && git commit -m $1 && git push"
alias allf="find . -type f -name "
alias alld="find . -type d -name "

alias :q=dummymsg
alias :q!=dummymsg
alias :x=dummymsg
alias :x!=dummymsg
alias :w=dummymsg
alias :w!=dummymsg
function dummymsg() {
	echo "This is not vim!"
}

alias ram=replaceallmatches
function replaceallmatches() {
	set -x
	LC_ALL=C find ./ -type f -exec sed -i '' -e s/$1/$2/g {} \;
	set +x
}
