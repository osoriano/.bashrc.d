# Set the namespace of the current k8s context
kns() {
    local ns="${1}"
    kubectl config set-context $(kubectl config current-context) --namespace="${ns}"
}

# Get ip addresses of docker container
dip() {
    docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}

# Outputs file names of specified revision (defaults to HEAD)
gdt() {
    if [[ "$#" == 0 ]]; then
        set -- HEAD
    fi
    git diff-tree --name-only --no-commit-id -r "$@"
}

# Pushes to dev branch on downstream remote
# Uses origin remote if downstream not available
gpd() {
    if git remote | grep downstream; then
        git push -f downstream HEAD:dev
    else
        git push -f origin HEAD:dev
    fi
}

vf() {
    vim $(fzf)
}

vfm() {
    vim $(fzf -m)
}
