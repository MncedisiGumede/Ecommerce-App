import 'package:flutter/material.dart';
import 'package:project_deapsea2/constants/asset_paths.dart';
import 'package:project_deapsea2/constants/constants.dart';
import 'package:project_deapsea2/size_config.dart';

class SplashContent extends StatelessWidget{
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Spacer(),
        Image.asset(
          logo, 
          width: getProportionateScreenWidth(360),
          height: getProportionateScreenHeight(40), 
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}