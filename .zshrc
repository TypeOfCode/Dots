# BTU
# libwmclient
source $HOME/.config/zgen/zgen.zsh
PS1="%F{red}[%2~]%f%F{yellow}|%f%F{green}[%n@%m]%f %F{magenta}>>%f "

if ! zgen saved; then
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/z

  zgen save
fi

path+=("$HOME/.local/bin")
export PATH
export XDG_CONFIG_HOME="$HOME/.config"

alias vi=nvim
alias py=python
alias ls="ls --color=auto"
alias neofetch="neofetch --w3m ~/Pictures/inuse/*"

alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"


# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
