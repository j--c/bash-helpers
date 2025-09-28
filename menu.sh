# creates a generic menu
# not really meant to be used on its own

get_menu_selection() {
    PS3=${1}
    select selection in ${@:2};
    do
        if [[ -n ${selection} ]]; then
            break
        else
            PS3="Invalid selection!  Try again: "
        fi
    done
    echo ${selection}
}

local tf_instr='Enter the number of the test framework you want: '
local tf_opts=('behave' 'none')
local tf=$(get_menu_selection "${tf_instr}" "${tf_opts[@]}")

if [ "${tf}" == "behave" ]; then
    init_bdd_dir "${project_dir_path}"
fi
