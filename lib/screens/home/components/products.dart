import 'package:flutter/material.dart';
import 'package:project_deapsea2/constants/asset_paths.dart';
import 'package:project_deapsea2/constants/controllers.dart';
import 'package:project_deapsea2/models/product.dart';
import 'package:project_deapsea2/screens/home/components/single_product.dart';
import 'package:get/get.dart';

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(()=>GridView.count(
        crossAxisCount: 2,
        childAspectRatio: .63,
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 10,
        children: productsController.products.map((ProductModel product) {
          return SingleProductWidget(product: product,);
        }).toList()));
  }
}