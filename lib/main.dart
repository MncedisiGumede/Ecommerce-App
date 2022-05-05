import 'package:flutter/material.dart';
import 'package:project_deapsea2/constants/constants.dart';
import 'package:project_deapsea2/constants/firebase.dart';
import 'package:project_deapsea2/controllers/app_controller.dart';
import 'package:project_deapsea2/controllers/payments_controller.dart';
import 'package:project_deapsea2/screens/home/homepage.dart';
import 'package:project_deapsea2/screens/splash/loading_splash.dart';
import 'package:get/get.dart';
import 'package:project_deapsea2/screens/splash/splash.dart';
import 'package:project_deapsea2/screens/authentication/components/auth.dart';
import 'constants/firebase.dart';
import 'controllers/app_controller.dart';
import 'controllers/auth_controller.dart';
import 'controllers/product_controller.dart';
import 'controllers/cart_controller.dart';
import 'controllers/payments_controller.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value){
    Get.put(AppController());
    Get.put(UserController());
    Get.put(ProductsController());
    Get.put(CartController());
    Get.put(PaymentsController());
  });
  runApp(const MyApp());
}

const TargetPlatform platform = TargetPlatform.android;
const Color primaryColor = kPrimaryColor;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        platform: platform,
        brightness: Brightness.dark,
        sliderTheme: SliderThemeData.fromPrimaryColors(
          primaryColor: primaryColor, 
          primaryColorDark: primaryColor, 
          primaryColorLight: primaryColor, 
          valueIndicatorTextStyle: const DefaultTextStyle.fallback().style)
      ),
      home: AuthenticationScreen(),
    );
  }
}


