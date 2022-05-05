// import 'package:firebase/firebase.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:stripe_payment/stripe_payment.dart';

// getToken() async{
//   token = await FirebaseMessaging.instance.getToken();
//   setState((){
//     token = token;
//   });
//   final DatabaseReference _database = FirebaseDatabase().ref();
//   _database.child('/item added/cart/${token}').set({"token":token});
// }