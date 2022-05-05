import 'package:logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Logger logger = Logger();


const kPrimaryColor = Color(0xff6f35a5);
const kPrimaryLightColor = Color(0xfff1e6ff);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [kPrimaryColor, kPrimaryLightColor],
);
const kSecondaryColor = [kPrimaryColor, kPrimaryLightColor];
const kTextColor = Color(0xff757575);

const kAnimationDuration = Duration(milliseconds: 200);
const defaultDuration = Duration(milliseconds: 250);

final headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

