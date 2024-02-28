#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# nodejs version
nodejs_version=12

#=================================================
# PERSONAL HELPERS
#=================================================

bool_to_str() {
    bool_str=(false true)
    return "${bool_str[$1]}"
}

dato_setup_config_files() {
    # create config directory (if it doesn't exist yet)
    [ -d "$install_dir/config/" ] || mkdir "$install_dir/config/"

    # setup public dato config
    ynh_add_config --template="public.js" --destination="$install_dir/config/public.js"
    chmod 400 "$install_dir/config/public.js"
    chown "$app:$app" "$install_dir/config/public.js"

    # setup private dato config
    if [[ $autosynchronize == true ]]; then
        ynh_add_config --template="private-autosync.js" --destination="$install_dir/config/private.js"
    else
        ynh_add_config --template="private.js" --destination="$install_dir/config/private.js"
    fi
    chmod 400 "$install_dir/config/private.js"
    chown "$app:$app" "$install_dir/config/private.js"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
