# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git cp)

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=20000
setopt inc_append_history
setopt rmstarsilent

# setting git to NOT clear the screen when printing out stuff like git grep
export GIT_PAGER='less -X --quit-if-one-screen'

export PATH=/intucell/packages/mongodb-2.2.2/bin/:~/bin:~/Library/Haskell/bin:~/scripts:/opt/local/bin:/opt/local/sbin:$PATH

source $ZSH/oh-my-zsh.sh
source ~/.zshaliases

# Customize to your needs...
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

ulimit -n 2000

# setting up and down keys to search history according to beginning only
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward


# for documentation compiling
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export NOSE_REDNOSE=1
unsetopt share_history
