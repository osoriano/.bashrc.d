if [[ "${BASHRC_PROFILE_SET}" == 1 ]]; then
    return
fi

export BASHRC_PROFILE_SET=1

source ~/.bashrc.d/env.sh
source ~/.bashrc.d/yahoo-profile.sh
