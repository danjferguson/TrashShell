# configured on mbp
# colorful ls
export CLICOLOR=1
# colorful grep
export GREP_OPTIONS='--color=auto'
if [ -f /usr/local/Cellar/lmod/7.8/init/bash ]; then
  . /usr/local/Cellar/lmod/7.8/init/bash
  export MODULEPATH=$HOME/depot/modulefiles
fi
[ -f /usr/local/Cellar/git/$GIT_VER/etc/bash_completion ] && . /usr/local/Cellar/git/$GIT_VER/etc/bash_completion
GIT_VER=$(git --version | awk '/version/{print $NF}')
GIT_BASH_DIR=/usr/local/Cellar/git/$GIT_VER/etc/bash_completion.d
source $GIT_BASH_DIR/git-completion.bash
source $GIT_BASH_DIR/git-prompt.sh
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias od='cd ~/OneDrive\ -\ CIDR/' 
GIT_PS1_SHOWDIRTYSTATE=true
PS1_NAME=mac
export PS1='$PS1_NAME [\W]$(__git_ps1)\$ '
