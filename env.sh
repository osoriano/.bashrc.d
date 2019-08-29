if [[ "${BASHRC_PROFILE_SET}" == 1 ]]; then
    return
fi

export BASHRC_PROFILE_SET=1

export VISUAL=vim
export EDITOR="$VISUAL"

# fd uses .gitignore files to filter file results
export FZF_DEFAULT_COMMAND='fd'
