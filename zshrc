ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
plugins=(osx git github svn django perl pip python)
source $ZSH/oh-my-zsh.sh

alias ls='ls -GF'

export VISUAL='vi'
export EDITOR='vi'

bindkey -e

#PROMPT='%~ %B%%%b '
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
