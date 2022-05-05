import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_deapsea2/controllers/cart_controller.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> getTokenToCart() async{
  HttpsCallable callable = FirebaseFunctions.instance.httpsCallable('addProductToCart');
  final results = await callable();

}