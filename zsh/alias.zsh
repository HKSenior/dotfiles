# Terminal alias
alias home="cd ~"
alias show_options='shopt'
alias c='clear'
alias l="ls -FGlhpai"
alias cl="c;l"
alias bc="cd ..;c"
alias bcl="cd ..;cl;pwd"
alias d="cd $OLDPWD"
alias f='open -a Finder ./'
alias ..="cd .."               # Go to the parent directory
alias ...="cd ../../"            # Go up two directories
alias ....="cd ../../../"          # Go up three directions
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
alias .......="cd ../../../../../"
alias myip="ifconfig | grep inet | awk 'NR==5{print;exit}' | awk '{print $2}' "
alias myextip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
alias open="open -a"
alias shells="cat /etc/shells"
alias current_shell="echo $SHELL"
alias os="echo $OSTYPE"
alias user="echo $USERNAME"
alias users="who"
alias paths="echo $PATH"
alias cpu="sysctl -n machdep.cpu.brand_string"
alias code="cd ~/Code/"
alias repo="cd ~/repo/"
alias dotfiles="cd ~/repo/dotfiles/"
alias dotvim="cd ~/repo/dotvim/"
alias git_username="git config user.name"
alias git_email="git config user.email"
alias git_settings="git config --list"
alias school="cd ~/Documents/School/"
alias crap="csrutil status"
alias vim_bun="cd ~/.vim/bundle"
alias startup="source /usr/local/bin/eyes; source /usr/local/bin/ghosts"
alias dnsservers="cat /etc/resolv.conf"

# Editing or reloading alias
alias path="echo $PATH"
alias eb="vim ~/.bash_profile"
alias ev="vim ~/.vimrc"
alias ez="vim ~/.zshrc"
alias et="vim ~/.tmux.conf"
alias rb="source ~/.bash_profile"
alias rz="source ~/.zshrc"
alias rt="tmux source-file ~/.tmux.conf"
alias show="defaults write com.apple.finder AppleShowAllFiles YES"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO"
alias ycm="cp ~/Documents/Code/.ycm_extra_conf.py ."
alias d_lang="echo $d"

# Tmux alias
alias tmux="tmux -2"
alias ta="tmux attach -t"
alias tnew="tmux new -s"
alias tls="tmux ls"
alias tkill="tmux kill-session -t"

