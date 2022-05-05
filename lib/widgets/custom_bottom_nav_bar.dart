import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_deapsea2/main.dart';
import 'package:project_deapsea2/screens/home/homepage.dart';
import 'package:project_deapsea2/screens/profile/profile.dart';
import 'package:project_deapsea2/constants/constants.dart';
import 'package:project_deapsea2/constants/enums.dart';

class CustomBottomNavBar extends StatelessWidget{
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xffb6b6b6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color:  Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 20,
            color: Color(0xffdadada).withOpacity(0.15),
          ),
        ],
        borderRadius:  BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () =>
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen())
                    )
                  }
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
              ),
              onPressed: (){},
            ),
            IconButton(onPressed: (){}, 
              icon: SvgPicture.asset(
                "assets/icons/chat.svg"
              )
              ),
            IconButton(onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()));
            }, 
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
              ) 
            ),
          ],
        ),
      ),
    );
  }
}