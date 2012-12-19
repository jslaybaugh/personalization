source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[1;36m\]"
NO_COLOR="\[\033[0m\]"
GIT_STATUS='$(__git_ps1 " [%s]")'
PROMPT_CHAR='\$ '
GIT_PS1_SHOWDIRTYSTATE=true
PS1="${GREEN}\u@\h${YELLOW} \w${RED}${GIT_STATUS} ${CYAN}${PROMPT_CHAR}${NO_COLOR}"
