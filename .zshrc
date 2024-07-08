# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$HOME/.local/scripts:$HOME/go/bin:$PATH
fpath+=~/.zfunc


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'


HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=10000
setopt autocd
unsetopt beep notify
bindkey -v


# zstyle '*:compinit' arguments -D -i -u -C -w
#
#

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
    


alias vim="nvim"
alias v="nvim ."

alias ls="eza"
alias l="ls -lah"
alias ll="ls -a"

alias gst="git status"
alias gca="git commit -a"
alias gcam="git commit -am"
alias gcm="git commit -m"
alias glo="git log --oneline"
alias glog="git log --oneline --graph"

alias gitconfigr="git config remote.origin.fetch '+refs/heads/*:refs/remotes/origin/*'"

alias lz="lazygit"


eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export GPG_TTY=$(tty)
