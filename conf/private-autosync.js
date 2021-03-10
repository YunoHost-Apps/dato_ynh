
module.exports = {

  // invert booleans in the following three lines for testing, development and modifications of the app
  production: true,
  debug: false,
  refreshServiceWorkerScriptAtEachRequest: false,

  port: "{{{port}}}",

  authentication: {
    couchUrl: "{{{couch_url}}}",
  },
  couchAdminAuthentication: {
    // couch admin user:
    username: "{{{couch_admin_name}}}",
    // couch admin user's password:
    password: "{{{couch_admin_password}}}",
    // the url where your couchdb server is accessible from the internet:
    customCouchUrl: "{{{couch_url}}}",
  },

};
