export PATH="${PATH}:/opt/java/bin"
export PATH="${PATH}:/opt/go/bin"
export PATH="${PATH}:/opt/node/bin"
export PATH="${PATH}:/opt/maven/bin"
export PATH="${PATH}:/opt/pig/bin"
export PATH="${PATH}:/opt/hadoop/bin"
export PATH="${PATH}:/home/osoriano/go/bin"

export JAVA_HOME="/opt/java"

# No SSH forwarding in mosh. Symlink sock in /tmp/ssh.XXX to path below
export SSH_AUTH_SOCK=/home/${USER}/.ssh/ssh_auth_sock
