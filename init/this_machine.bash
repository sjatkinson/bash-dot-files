this_machine=`uname -n`
this_machine_script=${init_dir}/machines/${this_machine%%.*}.bash
echo $this_machine_script
if [[ -e $this_machine_script ]] ; then
    source $this_machine_script
else
    echo !! No script for this computer: $this_machine_script !!
fi

