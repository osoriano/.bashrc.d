# User specific aliases and functions
alias la="ls -A"
alias ll="ls -l"
alias lal="ls -lA"

alias pd="pushd"
alias ppd="popd"

alias pssh="ssh -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no"
alias pscp="scp -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no"

alias vi="vim"
alias h="history | less +G"

alias gb="git branch"
alias gc="git commit"
alias gr="git rebase"
alias gch="git checkout"
alias gco="git clone"
alias gd="git diff | less"
alias gf="git fetch"
alias gl="git log"
alias gp="git pull"
alias gpu="git push"
alias gs="git status"

alias k=kubectl

function kns() {
    local ns="${1}"
    kubectl config set-context $(kubectl config current-context) --namespace="${ns}"
}
