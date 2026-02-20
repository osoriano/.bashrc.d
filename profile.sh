if [[ "${BASHRC_PROFILE_SET}" == 1 ]]; then
    return
fi

export BASHRC_PROFILE_SET=1

source ~/gh/osoriano/.bashrc.d/env.sh
