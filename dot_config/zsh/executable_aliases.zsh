#!/bin/sh

# general
alias ex='source ~/.zshrc'
alias oh='cd ~/.config/zsh && nvim aliases.zsh'
alias ..='cd ..'
alias c='clear'

# lazy git
alias lg='lazygit'

# chezmoi
alias chz='chezmoi'

# tmux
alias tls='tmux ls'
alias tnew='tmux new -s '
alias tach='tmux attach -t '

# tree
alias t='ls -lh --git --no-permissions --octal-permissions --changed --time-style iso --tree --level=1'
alias tt='ls --tree --level=2'
# alias ta='ls -a --tree --level=1'
alias ta='ls -lha --git --no-permissions --octal-permissions --changed --time-style iso --tree --level=1'
alias tg='t | grep'

# neovim
alias v='nvim'
alias vo='nvim .'

# pip
alias plist='pip list'
alias plistg='pip list | grep'

# mamba
alias mact='mamba activate'
alias mdact='mamba deactivate'
alias mcreate='mamba create -n'
alias minst='mamba install'
alias mlist='mamba list'
alias mlistg='mamba list | grep'

# pipenv stuff
# alias pshell='pipenv shell'
# alias pinst='pipenv install'

# poetry stuff
alias pshell='poetry shell'
alias padd='poetry add'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB
