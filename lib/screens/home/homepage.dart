import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:project_deapsea2/constants/constants.dart';
import 'package:project_deapsea2/constants/controllers.dart';
import 'package:project_deapsea2/constants/asset_paths.dart';
import 'package:project_deapsea2/constants/enums.dart';
import 'package:project_deapsea2/screens/home/components/products.dart';
import 'package:project_deapsea2/screens/home/components/shopping_cart.dart';
import 'package:project_deapsea2/size_config.dart';
import 'package:project_deapsea2/widgets/custom_bottom_nav_bar.dart';
import 'package:project_deapsea2/widgets/custom_text.dart';
import 'package:project_deapsea2/widgets/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Image.asset(
             logo,
             width: 300,
             height: 25,
             fit: BoxFit.contain,
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  showBarModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      color: Colors.white,
                      child: ShoppingCartWidget(),
                    ),
                  );
                })
          ],
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: [
              Obx(()=>UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black
                ),
                  accountName: Text(userController.userModel.value.name ?? ""),
                  accountEmail: Text(userController.userModel.value.email ?? ""))),
              ListTile(
                onTap: () {
                  userController.signOut();
                },
                leading: Icon(Icons.exit_to_app),
                title: Text("Log out"),
              )
            ],
          ),
        ),
        body: Container(
          color: Colors.white30,
          child: ProductsWidget(),
        ),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
        );
        
  }
}