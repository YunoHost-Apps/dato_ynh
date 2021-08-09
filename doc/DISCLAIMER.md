* Any known limitations, constrains or stuff not working, such as (but not limited to):
    * For now, dato needs a full domain, it doesn't support being set to a subpath.
    * LDAP is not supported, but dato has it's own user's control system, so it can be used publicly, or restricted to some users when autosynchronization is enabled.

## Configuration

To configure dato, you can edit the `config/public.js` file in the app directory that should be in `/opt/yunohost/APPID/` where `APPID` is `dato` if it's the first installed instance, `dato__2`, `dato__3`... for additional instances.
You can also make modifications in `config/private.js`, but be sure to know what you're doing when doing so.


## Autosynchronization

By default all data you create with dato is stored only in your browser. Users can manually enable per-database synchronization with any remote couch server, but this process is not obvious to users. Therefore dato provide an autosynchronization mechanism.
To enable it, you need to setup a couchdb server (you can do this using the [couchdb yunohost package](https://github.com/YunoHost-Apps/couchdb_ynh)). You should do this before installing dato.
Then when installing dato, set the url to your couchdb server when prompted (you will also need to fill your couchdb admin password, and info about the dato admin user to create). Dato will automatically setup the dato administrator account in your couchdb server. You can then easily add users from the user interface, as specified below.

If you want to allow both a free usage of the app by anyone, and autosynchronization for some users, you can install the dato package multiple times with different setups.


## Adding users

If you setup autosynchronization, users will need an account to use the app. Dato doesn't support LDAP for the moment, so you will need to add users in it's own database.
To add a user to dato, just visit the `/users/` page (e.g. https://dato.yourdomain.tld/users/), create a new user, then don't forget to click on "roles" under the user's name, and add the role `dato`.
If you want a user to have administration rights (= to have the power to add/remove users) you can give that user the `dato-admin` role.

Also, if you need, you can make use of the password reset feature to allow users to modify their passwords, you will just need to send them the generated password reset link.


## A note about dato

Please be aware that dato is a Progressive Web App. In a nutshell, this means that browsers cache the whole app, so it doesn't have to be requested to the server every time a user is visiting it.
This lowers solicitation of the server, and also allow users to use dato offline.

When the app is upgraded, the user's browser will automatically detect that there is a new version, and propose to reload the page to update. However, sometimes it seems a bit random how browsers notice the new version, so if you want to make sure you're using the latest version, click on the "?" button (top-right in the web interface), and choose "credits" to verify the version you're using.
You can also force reloading the app from the server opening "about:serviceworkers" in your browser and unregistering the worker for the domain in which you installed dato.
