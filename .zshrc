#####################
##          _      ##
##  _______| |__   ##
## |_  / __| '_ \  ##
##  / /\__ \ | | | ##
## /___|___/_| |_| ##
#####################

export ZSH="/home/andrew/.oh-my-zsh"
ZSH_THEME="gallois"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# handly ls shortcuts
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# who has time to type nvim
alias vim='nvim'
alias vi='nvim'

# pacman shortcuts
alias ps='sudo pacman -S'
alias psyu='sudo pacman -Syu'
alias pr='sudo pacman -R'
alias prns='sudo pacman -Rns'

# i am very lazy
alias c='clear'
alias python="python3"

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
