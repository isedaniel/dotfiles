export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

[ -f "/Users/dani/.ghcup/env" ] && . "/Users/dani/.ghcup/env" # ghcup-env

# set colors for ls and grep
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto'
export TERM=xterm-256color

# add git info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt prompt_subst

# set prompt
export PROMPT=$'%F{green}%n@%m%f %F{cyan}%~%f %F{202}${vcs_info_msg_0_}%f\n %# '

# set ll alias
alias ll="ls -lAh"

# set nvm conf
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion


# Doom emacs bin to PATH
export PATH="$HOME/.config/emacs/bin:$PATH"
