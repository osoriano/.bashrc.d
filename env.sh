export VISUAL=vim
export EDITOR="$VISUAL"

# fd uses .gitignore files to filter file results
export FZF_DEFAULT_COMMAND='fd'

# From nvm git install instructions
# See https://github.com/nvm-sh/nvm#git-install
export NVM_DIR="$HOME/gh/nvm-sh/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
