# BTU
# libwmclient
# source $HOME/.config/zgen/zgen.zsh
PS1="%F{red}[%2~]%f%F{yellow}|%f%F{green}[%n@%m]%f %F{magenta}>>%f "

# if ! zgen saved; then
#   zgen oh-my-zsh
#   zgen oh-my-zsh plugins/z

#   zgen save
# fi

path+=("$HOME/.local/bin")
export PATH
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export _Z_DATA="$XDG_DATA_HOME"/z
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export WGETRC="$XDG_CONFIG_HOME"/wgetrc
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export RANGER_LOAD_DEFAULT_RC=FALSE

alias wget="wget --hsts-file="$XDG_CACHE_HOME/wget-hsts""

alias vi=nvim
alias py=python
alias ls="ls --color=auto"
alias neofetch="neofetch --w3m ~/Pictures/inuse/*"

alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dots-push="dots push -u origin master"

# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$HOST-$ZSH_VERSION
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
