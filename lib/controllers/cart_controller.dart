import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_deapsea2/constants/constants.dart';
import 'package:project_deapsea2/constants/controllers.dart';
import 'package:project_deapsea2/models/cart_item.dart';
import 'package:project_deapsea2/models/product.dart';
import 'package:project_deapsea2/models/user.dart';
import 'package:uuid/uuid.dart';

class CartController extends GetxController {
  static CartController instance = Get.find();
  RxDouble totalCartPrice = 0.0.obs;

  @override
  void onReady() {
    super.onReady();
    ever(userController.userModel, changeCartTotalPrice);
  }

  void addProductToCart(ProductModel product) {
    try {
      if (_isItemAlreadyAdded(product)) {
        Get.snackbar("Check your cart", "${product.name} is already added");
      } else {
        String itemId = Uuid().toString();
        userController.updateUserData({
          "cart": FieldValue.arrayUnion([
            {
              "id": itemId,
              "productId": product.id,
              "name": product.name,
              "quantity": 1,
              "price": product.price,
              "image": product.image,
              "cost": product.price
            }
          ])
        });
        Get.snackbar("Item added", "${product.name} was added to your cart");
      }
    } catch (e) {
      Get.snackbar("Error", "Cannot add this item");
      debugPrint(e.toString());
    }
  }

  void removeCartItem(CartItemModel cartItem) {
    try {
      userController.updateUserData({
        "cart": FieldValue.arrayRemove([cartItem.toJson()])
      });
    } catch (e) {
      Get.snackbar("Error", "Cannot remove this item");
      debugPrint(e.toString());
    }
  }

  changeCartTotalPrice(UserModel userModel) {
    totalCartPrice.value = 0.0;
    if (userModel.cart!.isNotEmpty) {
      userModel.cart!.forEach((cartItem) {
        totalCartPrice.value += cartItem.cost!;
      });
    }
  }

  bool _isItemAlreadyAdded(ProductModel product) =>
      userController.userModel.value.cart!
          .where((item) => item.productId == product.id)
          .isNotEmpty;

  void decreaseQuantity(CartItemModel item){
    if(item.quantity == 1){
      removeCartItem(item);
    }else{
      removeCartItem(item);
      item.quantity = item.quantity! - 1;
          userController.updateUserData({
        "cart": FieldValue.arrayUnion([item.toJson()])
      });
    }
  }

    void increaseQuantity(CartItemModel item){
      removeCartItem(item);
      item.quantity = item.quantity! + 1;
      logger.i({"quantity": item.quantity});
          userController.updateUserData({
        "cart": FieldValue.arrayUnion([item.toJson()])
      });
  }

  // Future <void>_addProductToCart(ProductModel product){
  //   try{
  //     if(_firebasePostReceived(product)){
  //       Get.snackbar("Check your cart", "${product.name} is added to your cart");
  //     } else{
  //       String itemId = Uuid().toString();
  //       userController.updateUserData({
  //         "cart" : FieldValue.arrayUnion([
  //           {
  //             "id": itemId,
  //             "product Id" : product.id,
  //             "name": product.name,
  //             "quantity": 1,
  //             "price": product.price,
  //             "image": product.image,
  //             "cost": product.price
  //           }
  //         ])
  //       });
  //       Get.snackbar(title, message)
  //     }
  //   }
  // }
}