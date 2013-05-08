ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
plugins=(osx brew git github svn pip python django coffee battery perl cpanm node npm redis-cli tmux tmuxinator vundle)
source $ZSH/oh-my-zsh.sh

alias ls='ls -GF'
alias tmux='TERM=screen-256color-bce tmux'

export VISUAL='vim'
export EDITOR='vim'
export PATH="/usr/local/mysql/bin:/usr/local/share/npm/bin/:/Users/wangxiaomo/Downloads/adt-bundle-mac-x86_64-20130219/sdk/tools/:/usr/local/share/python:$PATH"
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_17.jdk/Contents/Home'
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib/:$DYLD_LIBRARY_PATH"

# virtualenv wrapper
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python'
export WORKON_HOME='~/.envs/python-envs'
[ -s /usr/local/share/python/virtualenvwrapper.sh ] && source /usr/local/share/python/virtualenvwrapper.sh >>/dev/null 2>&1

bindkey -e

PROMPT='%~ $(git_prompt_info)%B%%%b '
unsetopt correct_all

# color the man book
export PAGER='`which less` -s'
export BROWSER='$PAGER'
export LESS_TERMCAP_mb=$'\E[01;36m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;33m'

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset - %C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
git config --global alias.df "diff --color"
git config --global alias.st "status -s"
git config --global alias.mg "merge --no-ff"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.reflog "reflog show master"

