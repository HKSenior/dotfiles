# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Path to link X11 lib
export Xlib=-I/usr/X11R6/include

# Set the term color
export TERM="xterm-256color"

# Set the terminal editor
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="my-theme"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
# ZSH_CUSTOM=$HOME/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting osx extract)

# User configuration
# [[ "$TERM" == "xterm" ]] && export TERM=xterm-256color

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin/"
export PATH="/usr/local/clang+llvm-4.0.0-x86_64-apple-darwin/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Source the aliases
source ~/.oh-my-zsh/lib/alias.zsh

# Path to eyes & ghosts source file
# source /usr/local/bin/eyes
# source /usr/local/bin/ghosts 

# Souce completion for tmuxinator
# source ~/.completion/tmuxinator.zsh

# Fix color problem for tmux
# export TERM=xterm-256color
# [ -n "$TMUX" ] && export TERM=screen-256color

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# This loads RVM into a shell session
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Source zsh-syntax-highlighting
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add the path to xv6 gcc executables to the path
export PATH=$PATH:/Users/Hassani/gcc-cross/toolchain/bin
