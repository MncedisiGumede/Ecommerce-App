// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_deapsea2/constants/controllers.dart';
import 'package:project_deapsea2/models/cart_item.dart';
import 'package:project_deapsea2/widgets/custom_text.dart';

class CartItemWidget extends StatelessWidget {
  final CartItemModel cartItem;

  const CartItemWidget({Key? key, required this.cartItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.center,
      children: [
        Padding(
          padding:
          const EdgeInsets.all(8.0),
          child: Image.network(
            cartItem.image.toString(),
            width: 80,
          ),
        ),
        Expanded(
            child: Wrap(
              direction: Axis.vertical,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                    child: CustomText(
                      text: cartItem.name.toString(),
                    )),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(
                            Icons.chevron_left),
                        onPressed: () {
                          cartController.decreaseQuantity(cartItem);
                        }),
                    Padding(
                      padding:
                      const EdgeInsets.all(
                          8.0),
                      child: CustomText(
                        text: cartItem.quantity.toString(),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons
                            .chevron_right),
                        onPressed: () {
                          cartController.increaseQuantity(cartItem);
                        }),
                  ],
                )
              ],
            )),
        Padding(
          padding:
          const EdgeInsets.all(14),
          child: CustomText(
            text: "\R${cartItem.cost}",
            size: 22,
            weight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

