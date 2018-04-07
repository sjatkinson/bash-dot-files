# common or useful function for our startup files or while in an interactive shell

function __prompt_command() {
    local Exit="$?"             # This needs to be first
    PS1=""

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    # if the last command failed, show the exit code
    if [ $Exit != 0 ]; then
        PS1+="${Red}exit=$Exit${RCol}\n"
    fi

    PS1+="${Gre}\u${RCol}${RCol}@${BBlu}\h ${Pur}\w\n${BYel}$ ${RCol}"
}



# fd - fuzzy cd 
function fd() {
   local dir
     dir=$(find ${1:-.} -path '*/\.*' -prune \
                          -o -type d -print 2> /dev/null | fzf +m) &&
     cd "$dir"
}

# TODO: do we really need this one any more?
function get_ip_addr() {
    echo $(route -n get default | grep interface | awk '{print $2}' | xargs ifconfig | grep -i "inet " | awk '{print $2}')
}

