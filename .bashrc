# .bashrc

# Aliases 
alias python=python3
alias pip=pip3
alias vim=nvim
alias v=nvim
alias t=tmux

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
export PATH
