# creates a generic yes no question
# not really meant to be used on its own

yes_no_question() {
    read -p "${1} (y/n)" -n 1 -r
    echo $REPLY
}

local virt_instr='Install a virtual environment?'
local virt=$(yes_no_question "${virt_instr}")

if [[ "${virt}" =~ ^(y|Y)$ ]]; then
fi

