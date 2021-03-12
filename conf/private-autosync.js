
module.exports = {

  // invert booleans in the following three lines for testing, development and modifications of the app
  production: true,
  debug: false,
  refreshServiceWorkerScriptAtEachRequest: false,

  port: "__PORT__",

  authentication: {
    couchUrl: "__COUCH_URL__",
  },
  couchAdminAuthentication: {
    // couch admin user:
    username: "__COUCH_ADMIN_NAME__",
    // couch admin user's password:
    password: "__COUCH_ADMIN_PASSWORD__",
    // the url where your couchdb server is accessible from the internet:
    customCouchUrl: "__COUCH_URL__",
  },

};
