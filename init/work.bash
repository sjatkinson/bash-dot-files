# set up stuff we need at work

if [[ $at_work ]] ; then
    dev_env=${WORK_DIR}Env/tpsScripts/devenv.sh
    if [[ -e $dev_env ]] ; then
        source $dev_env $WORK_DIR
    else
        echo !! $dev_env does not exist !!
    fi
else
    echo "running at home"
fi
