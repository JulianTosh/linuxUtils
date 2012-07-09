export HISTSIZE=99999
export HISTFILESIZE=99999
export HISTTIMEFORMAT="%Y-%m-%d:%H%M %Z  "
export HISTIGNORE=' *':'ls':'pwd':'history'
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
