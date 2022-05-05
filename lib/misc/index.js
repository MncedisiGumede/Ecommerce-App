const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp(functions.config().firebase);

exports.cartToken = functions.https.onCall((data, context) =>{
    return [0, 1, 2, 3, 4]
});

