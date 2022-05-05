import 'package:flutter/material.dart';
import 'package:project_deapsea2/constants/asset_paths.dart';

import 'custom_text.dart';

class ProductListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return           Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image1, width: 140,),
          ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    CustomText(text:"Echo Dot 3", size: 18,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    CustomText(text:"Amazon", color: Colors.grey,),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text:"\R299.00", size: 20, weight: FontWeight.bold,),
                    SizedBox(width: 100,),
                    IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){})
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    )
    ;
  }
}