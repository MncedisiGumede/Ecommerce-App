import 'package:project_deapsea2/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget{
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String text;
  final Color color, textColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newGestureDetector(),
      ),
    );
  }

  Widget newGestureDetector(){
    return GestureDetector(
      onTap: onTap,
      child: PhysicalModel(
        color: color,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          color: color,
          child: Container(
             alignment: Alignment.center,
             child: Text(
               text,
               style: TextStyle(
                 color: textColor, fontSize: 14, fontWeight: FontWeight.w500
               ),
             )
              ),
            ),
          ),
    );

  }
    
      // child: PhysicalModel(
      //   color: kPrimaryColor.withOpacity(0.4),
      //   elevation: 2,
      //   borderRadius: BorderRadius.circular(20),
      //   child: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: bgColor ?? kPrimaryLightColor,
      //     ),
      //     child: Container(
      //       margin: EdgeInsets.all(14),
      //       alignment: Alignment.center,
      //       child: CustomText(
      //         text: text,
      //         color: txtColor ?? Colors.white,
      //         size: 22,
      //         weight: FontWeight.normal,
      //     ),
      //   ),
      // ),
      // ),
    
  
}
