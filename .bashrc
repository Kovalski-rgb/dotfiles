#
# ~/.bashrc
#

alias c=clear
alias xc=exit
alias bhe='vim ~/.bashrc'
alias rr='source ~/.bashrc'
alias bhh='vim ~/.config/hypr/hyprland.conf'
alias cdh='cd ~/.config/hypr/'
alias l='ls -la'

alias vim=nvim
alias tow='$(cd ~/dotfiles && stow .)'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
