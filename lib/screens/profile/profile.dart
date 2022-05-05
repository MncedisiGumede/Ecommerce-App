import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:project_deapsea2/constants/enums.dart';
import 'package:project_deapsea2/widgets/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget{
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}