# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wedisagree"

alias 6300="cd ~/Dropbox/GT/2015_Spring/CS6300"
alias code="cd ~/Dropbox/codebox"
alias gittrends="cd ~/Dropbox/codebox/gittrends"
alias gmacs='open -a /Applications/Emacs.app $1'
alias mininet='ssh -p 3022 mininet@127.0.0.1'
alias gh="cd ~/Dropbox/codebox/go"
alias ghs="cd ~/Dropbox/codebox/go/src/github.com"
alias tmux="TERM=screen-256color-bce tmux"

# don't overwrite system vim
alias vim="/usr/local/Cellar/vim/7.4.898/bin/vim"
#highlight the matching word in different color
export GREP_OPTIONS="--color=auto"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/Dropbox/codebox/go
export PATH=$PATH:$GOPATH/bin


# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

# Anaconda
export PATH="$HOME/anaconda/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"
