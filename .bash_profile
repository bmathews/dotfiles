
source ~/.git-completion.bash
source ~/.git-prompt.sh
source ~/.local/bin/bashmarks.sh

export MAVEN_OPTS=-Xmx512m
alias ls='ls -GFha1'
export CLICOLOR=1
GIT_PS1_SHOWDIRTYSTATE=true

# light bg
# export PS1='\n🍕 \[$(tput setaf 7)\]\[$(tput setab 4)\] \[$(tput bold)\]\w \[$(tput setaf 4)\]\[$(tput setab 7)\]$(__git_ps1 "\[$(tput setaf 7)\]\[$(tput setab 1)\] \[$(tput setab 1)\]\[$(tput setaf 7)\]%s \[$(tput setaf 1)\]\[$(tput setab 7)\]\[$(tput setab 0)\]")\[$(tput sgr0)\] '
# dark bg
  export PS1='\n\[$(tput setaf 0)\]\[$(tput setab 4)\] \[$(tput bold)\]\[$(tput setaf 7)\]\w \[$(tput setaf 4)\]\[$(tput setab 0)\]$(__git_ps1 "\[$(tput setaf 0)\]\[$(tput setab 1)\] \[$(tput setaf 7)\]%s \[$(tput setaf 1)\]\[$(tput setab 0)\]\[$(tput setab 0)\]")\[$(tput sgr0)\] '

export LSCOLORS=exfxcxdxbxegedabagacad

export PATH=$PATH:/Users/brianmathews/Documents/android-sdk-macosx/platform-tools/
export PATH=$PATH:/usr/local/git/bin/
export PATH=$PATH:/Applications/Postgres.app/Contents/MacOS/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/share/npm/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/bin
export EDITOR=subl

export GOPATH=$HOME/go
export GREP_OPTIONS='--color=auto' GREP_COLOR='100;8'


alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias edit="open -a Sublime\ Text $1"
alias e="edit"
alias gp="git stash && git pull --rebase && git stash pop"
alias yolo="sudo"
alias internet="yolo ifconfig en0 down && yolo ifconfig en0 up"
alias shist="history | grep $1"
alias ag="ag --color-path 1\;34 --color-match 1\;41"
