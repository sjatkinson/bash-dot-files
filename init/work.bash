# set up stuff we need at work

if [[ $at_work ]] ; then
    dev_env=${WORK_DIR}Env/tpsScripts/devenv.sh
    if [[ -e $dev_env ]] ; then
        source $dev_env $WORK_DIR
    else
        echo !! No work script - $dev_env !!
    fi
else
    echo !! This must be a non-work computer, or is not set up !!
fi
