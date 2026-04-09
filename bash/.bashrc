#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lAh'

# Set prompt
GREEN="\[$(tput setaf 10)\]"
BLUE="\[$(tput setaf 14)\]"
RESET="\[$(tput sgr0)\]"
PS1="${BLUE}\u@\h${RESET} ${GREEN}\w${RESET} \n \$ "

# Add ~/.local/bin to PATH
export PATH="$PATH:$HOME/.local/bin"

