## Author -- Brandon Merritt

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd.='cd ..'
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias ls='ls -GFh'
alias ll='ls -la'
alias projects='cd ~/projects'
alias reference-ui='cd ~/projects/reference-ui'
alias deploy='. deploy.sh && clear'
alias start='cd ~/projects/[ember app] && serve'
alias ngstart='cd ~/projects/[angular app] && serve'

# Functions found in .bashrc
alias serve='serve'
alias merge='merge'

alias rm="rm -i"  # safety first
alias cask='brew cask' # i <3 u cask
alias where=which # sometimes i forget
alias brwe=brew  #typos

alias hosts='sudo vi /etc/hosts'

# Shortcuts
alias g="git"
alias v="vim"
