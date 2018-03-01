this_machine_script=${init_dir}/machines/$(uname -n).bash
echo $this_machine_script
if [[ -e $this_machine_script ]] ; then
    source $this_machine_script
else
    echo !! No script for this computer: $this_machine_script !!
fi

