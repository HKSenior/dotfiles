########### Terminal alias ###########


##### Moving around #####

# Make moving from dir to dir a little easier
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
alias .......="cd ../../../../../"

# Go to the home dir
alias home="cd ~"

# Clear the console
alias c='clear'

# List the directories contents using eza
alias l="eza -laH"

# Go to the dev dir
alias dev="cd ~/dev"

# Go to the config dir
alias config="cd ~/.config"


##### General #####

alias f='open -a Finder ./'

# Show hidden files
alias show="defaults write com.apple.finder AppleShowAllFiles YES"

# Hide hidden files
alias hide="defaults write com.apple.finder AppleShowAllFiles NO"

# Find pervious command
alias gh="history | grep"

# Clear nvim cache
alias clear_nvim_cache="rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim"

# Allow blaze to point to bazel
alias blaze=bazel

# Use Google Chrome cookies when downloading youtube videos
alias cyt-dlp="yt-dlp --cookies-from-browser chrome"

##### Get info #####

# Get your internal IP address
alias myip="ifconfig | grep inet | awk 'NR==5{print;exit}' | awk '{print $2}' "

# Get your external IP address
alias myextip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/"

# Open a file
alias open="open -a"

# Show the available shells
alias shells="cat /etc/shells"

# What is the current shell?
alias current_shell="echo $SHELL"

# What is the current OS?
alias os="echo $OSTYPE"

# The users username
alias user="echo $USERNAME"

# Who is currently logged in?
alias users="who"

# Print the PATH variable
alias path="echo $PATH"

# What is the name of the CPU?
alias cpu="sysctl -n machdep.cpu.brand_string"

# Current list of DNS servers
alias dnsservers="cat /etc/resolv.conf"


##### Open files #####

# Open the vim config file
alias evim="nvim ~/.vimrc"

# Open neovim init.lua
alias envim="nvim ~/.config/nvim/init.lua"

# Open the zsh config file
alias ezsh="nvim ~/.zshrc"

# Open the tmux config file
alias etmux="nvim ~/.tmux.conf"

# Open the alias file for ZSH
alias ealias="nvim ~/.config/dotfiles/zsh/.zsh_alias"


##### Sourcing files #####

# Reload bash
alias rbash="source ~/.bash_profile"

# Relod ZSH
alias rzsh="source ~/.zshrc"

# Reload tmux
alias rtmux="tmux source-file ~/.tmux.conf"


##### Git aliases #####

# Git username
alias git_username="git config user.name"

# Git email address
alias git_email="git config user.email"

# Git config
alias git_settings="git config --list"


##### Tmux alias #####

alias tmux="tmux -2"
alias ta="tmux attach -t"
alias tnew="tmux new -s"
alias tls="tmux ls"
alias tkill="tmux kill-session -t"

##### Vim alias #####

# alias vim="nvim"

alias ds='human_readable_dir_size'

human_readable_dir_size(){
    du -h $1 | tail -n 1
}

