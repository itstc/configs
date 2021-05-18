ZSH_DISABLE_COMPFIX="true"
# PROMPT=""
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias v='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%B%F{cyan}%n%f%b%B%F{cyan}:%f%b%F{11}%~%f%B${vcs_info_msg_0_}$ %b'

