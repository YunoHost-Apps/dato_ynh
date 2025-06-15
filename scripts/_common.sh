#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# nodejs version
nodejs_version=20

bool_to_str() {
    bool_str=(false true)
    echo "${bool_str[$1]}"
}

dato_setup_config_files() {
    mkdir -p "$install_dir/sources/config/"

    # setup public dato config
    ynh_config_add --template="public.js" --destination="$install_dir/sources/config/public.js"
    #REMOVEME? Assuming the file is setup using ynh_config_add, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chmod 400 "$install_dir/sources/config/public.js"
    #REMOVEME? Assuming the file is setup using ynh_config_add, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chown "$app:$app" "$install_dir/sources/config/public.js"

    # setup private dato config
    if [[ $autosynchronize == true ]]; then
        ynh_config_add --template="private-autosync.js" --destination="$install_dir/sources/config/private.js"
    else
        ynh_config_add --template="private.js" --destination="$install_dir/sources/config/private.js"
    fi
    #REMOVEME? Assuming the file is setup using ynh_config_add, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chmod 400 "$install_dir/sources/config/private.js"
    #REMOVEME? Assuming the file is setup using ynh_config_add, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chown "$app:$app" "$install_dir/sources/config/private.js"
}
