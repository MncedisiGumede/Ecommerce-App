// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_deapsea2/constants/asset_paths.dart';
import 'package:project_deapsea2/size_config.dart';
import 'package:project_deapsea2/widgets/loading.dart';

class LoadingSplash extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logo, 
            width: (360),
            height: (40),
          ),
          SizedBox(height: 10),
          Loading()
        ],
      )

    );
  }
}