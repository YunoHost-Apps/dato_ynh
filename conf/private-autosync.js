
export default {

  // invert booleans in the following three lines for testing, development and modifications of the app
  production: true,
  debug: false,
  refreshServiceWorkerScriptAtEachRequest: false,

  port: "__PORT__",

  authentication: {
    // the url to the couchdb server storing app users and databases
    couchUrl: "__COUCH_URL__",
    // couch admin username and password (used to add/modify/remove users from /users/ page, and automatically add/remove databases for users)
    couchAdminUsername: "__COUCH_ADMIN_NAME__",
    couchAdminPassword: "__COUCH_ADMIN_PASSWORD__",
  },
  autosynchronization: true,

};
