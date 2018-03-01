# what about cygwin?
platform=$(uname -s)

case $platform in
    Darwin) source ${init_dir}/platforms/darwin.bash;;
esac
