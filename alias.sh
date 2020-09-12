alias l="ls -lh"
alias ll="ls -lh"
alias la="ls -lAh"

alias pd="pushd"
alias ppd="popd"

alias pssh="ssh -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no"
alias pscp="scp -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no"

alias v="vim -O"
alias vi="vim -O"
alias vim="vim -O"

alias h="history | less +G"

alias gb="git branch"
alias gc="git commit"
alias gr="git rebase"
alias grm="git rebase origin/master"
alias grma="git rebase origin/main"
alias gch="git checkout"
alias gco="git clone"
alias gd="git diff"
alias gf="git fetch -p --all"
alias gl="git log"
alias gp="git pull"
alias gpu="git push"
alias gs="git status"
alias ga="git add"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias grs="git rebase --skip"

alias k=kubectl

alias standby='while true; do echo -n . && sleep 15; done'
