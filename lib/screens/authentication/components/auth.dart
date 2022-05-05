import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deapsea2/constants/asset_paths.dart';
import 'package:project_deapsea2/controllers/app_controller.dart';
import 'package:project_deapsea2/widgets/bottom_text.dart';
import 'package:project_deapsea2/screens/authentication/login.dart';
import 'package:project_deapsea2/screens/authentication/signup.dart';

class AuthenticationScreen extends StatelessWidget {
  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.width / 3),
            Image.asset(logo, width: 200,),
            SizedBox(height: MediaQuery.of(context).size.width / 5),

            Visibility(
                visible: _appController.isLoginWidgetDisplayed.value,
                child: LoginWidget()),
            Visibility(
                visible: !_appController.isLoginWidgetDisplayed.value,
                child: RegistrationWidget()),
            SizedBox(
              height: 10,
            ),
            Visibility(
              visible: _appController.isLoginWidgetDisplayed.value,
              child: BottomTextWidget(
                onTap: () {
                  _appController.changeDIsplayedAuthWidget();
                },
                text1: "Don\'t have an account?",
                text2: "Create account!",
              ),
            ),
            Visibility(
              visible: !_appController.isLoginWidgetDisplayed.value,
              child: BottomTextWidget(
                onTap: () {
                  _appController.changeDIsplayedAuthWidget();
                },
                text1: "Already have an account?",
                text2: "Sign in!!",
              ),
            ),
          ],
        ),
      ),)
    );
  }
}