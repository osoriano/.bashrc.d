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

# Format json file using jq
# See https://github.com/stedolan/jq/issues/105
jqf() {
    local jqf_dir="$(mktemp --directory /tmp/jqf-dir-XXXXXXXXX)"
    for f in "$@"; do
        local base="$(basename "${f}")"
        local jqf_file="${jqf_dir}/${base}"
        cat "${f}" | jq > "${jqf_file}"
        mv "${jqf_file}" "${f}"
    done
    rm --recursive --force "${jqf_dir}"
}

# Command for copying a docker volume
# See https://github.com/gdiepen/docker-convenience-scripts#docker_clone_volumesh
docker-volume-cp() {
  if [[ "$#" != 2 ]] || [[ -z "$1" ]] || [[ -z "$2" ]]; then
    echo "Usage: docker-volume-cp <src> <dst>"
    return 1
  fi
  local src="$1"
  local dst="$2"
  docker volume create "${dst}"
  docker run \
    --rm \
    --interactive \
    --tty \
    --volume "${src}:/from" \
    --volume "${dst}:/to" \
    alpine ash -c "
      set -o errexit
      set -o pipefail
      set -o nounset

      cd /from
      cp --archive . /to
      "
}

# Wait for the port to be open on the
# specified host
#
# See:
# https://stackoverflow.com/questions/27599839/
# how-to-wait-for-an-open-port-with-netcat
function wait_for_port() {
  local host="$1"
  local port="$2"

  while ! timeout 2 bash -c "< /dev/tcp/${host}/${port}" > /dev/null 2>&1; do
      echo "Waiting for ${host}:${port} to start"
      sleep 1
  done
}
