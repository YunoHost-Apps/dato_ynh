#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="curl"

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
  	# setup couch url, admin name and password
  	ynh_replace_string --match_string="{{{couch_url}}}" --replace_string="$couch_url" --target_file="$final_path/config/private.js"
  	ynh_replace_string --match_string="{{{couch_admin_name}}}" --replace_string="$couch_admin_name" --target_file="$final_path/config/private.js"
  	ynh_replace_string --match_string="{{{couch_admin_password}}}" --replace_string="$couch_admin_password" --target_file="$final_path/config/private.js"
  else
  	ynh_add_config --template="../conf/private.js" --destination="$final_path/config/private.js"
  fi
  # setup port to use
  ynh_replace_string --match_string="{{{port}}}" --replace_string="$port" --target_file="$final_path/config/private.js"

  # add admin email to public config if it was set
  if [[ $admin_email != "none" ]]; then
  	ynh_replace_string --match_string="{{{admin_email}}}" --replace_string="$admin_email" --target_file="$final_path/config/public.js"
  else
  	ynh_replace_string --match_string="{{{admin_email}}}" --replace_string="" --target_file="$final_path/config/public.js"
  fi

}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
