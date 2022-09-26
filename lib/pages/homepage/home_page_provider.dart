import 'package:flutter/material.dart';
import 'package:indigo/api/indigo_api.dart';
import 'package:indigo/models/product_model.dart';

class HomePageProvider extends ChangeNotifier {
  bool showLoading = false;
  List<ProductModel> productsList = [];

  HomePageProvider() {
    getProductsList();
  }

  getProductsList({bool initial = true}) async {
    showLoading = true;
    if (!initial) notifyListeners();

    final result = await IndigoAPI().products.getProductsData();

    if (result.isEmpty) {
    } else {
      productsList = result;
      showLoading = false;

      notifyListeners();
    }

    return productsList;
  }

  void onItemPressed(ProductModel product) {
    getProductsList(initial: false);

    print(product);
    // API
  }
}
