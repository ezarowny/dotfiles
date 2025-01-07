autoload -Uz compinit
compinit

# Function to check and format virtual environment prompt
function virtual_env_prompt() {
    if [[ -n "$VIRTUAL_ENV_PROMPT" ]]; then
        echo "(${VIRTUAL_ENV_PROMPT}) "
    fi
}

source ~/.git-prompt.sh

precmd () { __git_ps1 "%F{166}$(virtual_env_prompt)%f%n@%m:%~ " "$ " "(%s)"}
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWCOLORHINTS=true

alias pyclean="find . -name \*.pyc -o -name \*.pyo -o -name __pycache__ -delete"
