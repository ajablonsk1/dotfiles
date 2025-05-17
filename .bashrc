# .bashrc

# Aliases
alias python=python3
alias pip=pip3
alias vim=nvim
alias v=nvim
alias t=tmux
alias k=kubectl
alias watch='watch '

alias hl="cd ~/repos/homelab"

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Start starship
eval "$(starship init bash)"

# For brew to work
eval $(/opt/homebrew/bin/brew shellenv)

# Disable zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

PATH=$PATH:/usr/local/bin:/usr/local/homebrew
PATH="$PATH":~/.local/bin
PATH="$PATH":/usr/local/texlive/2025/bin/universal-darwin
PATH="$PATH":/Library/TeX/texbin/

export PATH
