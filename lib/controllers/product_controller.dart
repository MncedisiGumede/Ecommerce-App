import 'dart:async';
import 'package:get/get.dart';
import 'package:project_deapsea2/constants/firebase.dart';
import 'package:project_deapsea2/models/product.dart';

class ProductsController extends GetxController {
  static ProductsController instance = Get.find();
  RxList<ProductModel> products = RxList<ProductModel>([]);
  String collection = "products";

  @override
  onReady() {
    super.onReady();
    products.bindStream(getAllProducts());
  }

  Stream<List<ProductModel>> getAllProducts() =>
      firebaseFirestore.collection(collection).snapshots().map((query) =>
          query.docs.map((item) => ProductModel.fromMap(item.data())).toList());

}