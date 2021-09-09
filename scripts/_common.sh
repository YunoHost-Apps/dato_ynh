#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="curl jq"

# nodejs version
nodejs_version=12

#=================================================
# PERSONAL HELPERS
#=================================================

dato_setup_config_files() {

  # create config directory (if it doesn't exist yet)
  [ -d "$final_path/config/" ] || mkdir "$final_path/config/"

  # setup public dato config
  ynh_add_config --template="../conf/public.js" --destination="$final_path/config/public.js"

  # setup private dato config
  if [[ $autosynchronize == true ]]; then
  	ynh_add_config --template="../conf/private-autosync.js" --destination="$final_path/config/private.js"
  else
  	ynh_add_config --template="../conf/private.js" --destination="$final_path/config/private.js"
  fi

}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
