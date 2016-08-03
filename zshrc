# Path to your oh-my-zsh installation.
export ZSH=/Users/thofer/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract ruby rails brew osx z zsh-syntax-highlighting vi-mode)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

########################
# from thoughtbot
########################

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

## awesome cd movements from zshkit
# setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
# DIRSTACKSIZE=5

## Enable extended globbing
# setopt extendedglob

########################
# aliases
########################
. ~/.aliases

########################
# functions
########################
. ~/.functions

########################
# company_configs
########################
. ~/.company_configs

########################
# other configs
########################

# Use z
# . ~/.env/bin/z/z.sh

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

# Don't share history when there are multiple panes
unsetopt inc_append_history
unsetopt share_history

# Pure prompt
autoload -U promptinit && promptinit
prompt pure

# fix github for mac errors
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# thefuck config

eval "$(thefuck --alias)"

export NVM_DIR="/Users/thofer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# vi mode tweaks
export KEYTIMEOUT=1
# allow ctrl-r for searching history backward (insert mode)
bindkey '^r' history-incremental-search-backward
# allow ctrl-s for searching history forward (insert mode)
bindkey '^s' history-incremental-search-forward
# allow ctrl-a to go to beginning of line (insert mode)
bindkey '^a' beginning-of-line
# allow ctrl-e to go to end of line (insert mode)
bindkey '^e' end-of-line

bindkey '^k' kill-line
