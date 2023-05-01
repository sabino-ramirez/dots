#!/bin/sh
alias lg='lazygit'
alias nvimrc='cd ~/.config/nvim/ && nvim .'
alias zconf='nvim ~/.zshrc'
alias kitconf='nvim ~/.config/kitty/kitty.conf'
alias ex='source ~/.zshrc'
alias oh='cd ~/.config/zsh && nvim aliases.zsh'
alias t='ls -lh --git --no-permissions --octal-permissions --changed --time-style iso --tree --level=1'
alias tt='ls --tree --level=2'
alias ta='ls -a --tree --level=1'
alias ..='cd ..'
alias v='nvim'
alias vo='nvim .'
alias c='clear'

alias chz='chezmoi'

alias prof='cd ~ && nvim .profile'
alias tmuxconf='cd ~/.config/tmux/ && nvim tmux.conf'

alias slicer='exec /home/sabino/Downloads/Slicer-5.2.1-linux-amd64/Slicer'

alias pshell='pipenv shell'
alias pinst='pipenv install'
# alias padd='poetry add'
alias plist='pip list'
alias plg='pip list | grep '

alias monserv='monailabel start_server --app '

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

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# systemd
alias mach_list_systemctl="systemctl list-unit-files --state=enabled"

if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac
