#!/bin/bash

#=================================================
# PERSONAL HELPERS
#=================================================

bool_to_str() {
    bool_str=(false true)
    echo "${bool_str[$1]}"
}

dato_setup_config_files() {
    mkdir -p "$install_dir/sources/config/"

    # setup public dato config
    ynh_config_add --template="public.js" --destination="$install_dir/sources/config/public.js"

    # setup private dato config
    if [[ $autosynchronize == true ]]; then
        ynh_config_add --template="private-autosync.js" --destination="$install_dir/sources/config/private.js"
    else
        ynh_config_add --template="private.js" --destination="$install_dir/sources/config/private.js"
    fi
}
