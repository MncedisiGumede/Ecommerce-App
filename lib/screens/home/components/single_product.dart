// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_deapsea2/constants/constants.dart';
import 'package:project_deapsea2/constants/controllers.dart';
import 'package:project_deapsea2/models/product.dart';
import 'package:project_deapsea2/widgets/custom_text.dart';

class SingleProductWidget extends StatelessWidget {
  final ProductModel product;

  const SingleProductWidget({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 100.0,
            width: 90.0,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  product.image.toString(),
                fit: BoxFit.contain
                ),
              ],
            ),
          ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name.toString(),
                     style: TextStyle(
                       fontSize: 18.0,
                       fontWeight: FontWeight.bold,
                    )
                  ),
                  SizedBox(height: 8.0,),
                  Text(
                    product.brand.toString(),
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight:  FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  Text(
                     " \R ${product.price}",
                     style: TextStyle(
                       fontWeight: FontWeight.bold, fontSize: 20.0)
                  ),
                  
                  SizedBox(height: 8.0),
                  
                  SizedBox(
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Container(
                           height: 50.0,
                           width: 85.0,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(18),
                             border: Border.all(color: kPrimaryColor),
                           ),
                           child: IconButton(
                             icon: Icon(Icons.add_shopping_cart_rounded),
                             onPressed: (){
                               cartController.addProductToCart(product);
                             },
                           ),
                         )
                       ],
                     ),
                   )
                ],
              ),
            ),
          )
        ],
      ),

    );
      
      //     Flexible(
      //       flex: 3,
      //       child: Container(
      //         padding: const EdgeInsets.all(16.0),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               product.name.toString(),
      //               style: TextStyle(
      //                 fontSize: 18.0,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //             Text(
      //               product.brand.toString(),
      //               style: TextStyle(
      //                 fontSize: 18.0,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //             SizedBox(
      //               height: 15.0,
      //               child: Row(
      //                 children: [
      //                   Icon(Icons.star_rate,
      //                   color: Color(0xffe39034), size: 20.0),
      //                   Text("4.5 (128)"),
      //                 ],
      //               ),
      //             ),
      //             Text(
      //               " \R ${product.price}",
      //               style: TextStyle(
      //                 fontWeight: FontWeight.bold, fontSize: 20.0)
      //               ),
      //             SizedBox(
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Container(
      //                     height: 50.0,
      //                     width: 85.0,
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(18),
      //                       border: Border.all(color: kPrimaryColor),
      //                     ),
      //                     child: IconButton(
      //                       icon: Icon(Icons.shopping_basket_rounded),
      //                       onPressed: (){},
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ]
      // ),
      // decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(15),
      //     boxShadow: [
      //       BoxShadow(
      //           color: Colors.grey.withOpacity(.5),
      //           offset: Offset(3, 2),
      //           blurRadius: 7)
      //     ]),
      // child: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: ClipRRect(
      //           borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(15),
      //             topRight: Radius.circular(15),
      //           ),
      //           child: Image.asset(
      //             product.image.toString(),
                  
      //             fit: BoxFit.fitWidth,
      //           )),
      //     ),
      //     CustomText(
      //       text: product.name.toString(),
      //       size: 18,
      //       weight: FontWeight.bold,
      //       color: kPrimaryLightColor,
      //     ),
      //     CustomText(
      //       text: product.brand.toString(),
      //       color: Colors.grey,
      //     ),
      //     SizedBox(
      //       height: 5,
      //     ),
          
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(left: 8.0),
      //           child: CustomText(
      //             text: "\R ${product.price}",
      //             size: 22,
      //             weight: FontWeight.bold,
      //           ),
      //         ),
      //         SizedBox(
      //           width: 30,
      //         ),
      //         IconButton(
      //             icon: Icon(Icons.add_shopping_cart),
      //             onPressed: () {})
      //       ],
      //     ),
      //   ],
      // ),
  //   );
   }
}