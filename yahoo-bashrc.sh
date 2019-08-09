sr() {
    if [ ! -e "${SSH_AUTH_SOCK}" ]; then
        if ls /tmp/ssh-*/*; then
            ln -sf /tmp/ssh-*/*  "${SSH_AUTH_SOCK}"
        else
            # Mosh doesn't support ssh agent forwarding
            # Use SSH forwarding in another terminal
            echo "Unable to detect SSH forwarding"
            return 1
        fi
    fi
}
