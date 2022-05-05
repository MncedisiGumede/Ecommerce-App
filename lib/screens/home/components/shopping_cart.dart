import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_deapsea2/constants/controllers.dart';
import 'package:project_deapsea2/models/cart_item.dart';
import 'package:project_deapsea2/screens/home/components/cart_item_widget.dart';
import 'package:project_deapsea2/widgets/custom_button.dart';
import 'package:project_deapsea2/widgets/custom_text.dart';
import 'package:project_deapsea2/constants/asset_paths.dart';

class ShoppingCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: CustomText(
                text: "Shopping Cart",
                size: 24,
                weight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Obx(()=>Column(
              children: userController.userModel.value.cart!
                  .map((cartItem) => CartItemWidget(cartItem: cartItem,))
                  .toList(),
            )),
          ],
        ),
        Positioned(
            bottom: 40,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8),
              child: Obx(() => CustomButton(
                  text: "Pay (\R${cartController.totalCartPrice.value.toStringAsFixed(2)})", onTap: () {
                    paymentsController.createPaymentMethod();}),)
                  )),
      ],
    );
  }
}
