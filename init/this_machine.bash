# TODO: we should take the machine name down to the base name
# and remove any domain portion (.local, .san.rr.com). This
# will eliminate issue when not connected to the corporate network
# at home
this_machine_script=${init_dir}/machines/$(uname -n).bash
echo $this_machine_script
if [[ -e $this_machine_script ]] ; then
    source $this_machine_script
else
    echo !! No script for this computer: $this_machine_script !!
fi

