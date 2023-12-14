autoload -Uz compinit
compinit

source ~/.git-prompt.sh

precmd () { __git_ps1 "%F{166}${VIRTUAL_ENV_PROMPT}%f%n@%m:%~ " "$ " "(%s)"}
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWCOLORHINTS=true

alias pyclean="find . -name \*.pyc -o -name \*.pyo -o -name __pycache__ -delete"
