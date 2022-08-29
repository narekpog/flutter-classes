import 'dart:convert';

import 'package:first_project/models/product_model.dart';
import 'package:flutter/material.dart';

String productsJson =
    r'[{"product_name":"","price":100,"type":"shoes","is_available":true,"materials":["cotton","jeans"]},{"product_name":"","price":100,"type":"shoes","is_available":true,"materials":["cotton","jeans"]},{"product_name":"","price":100,"type":"shoes","is_available":true,"materials":["cotton","jeans"]},{"product_name":"","price":100,"type":"shoes","is_available":true,"materials":["cotton","jeans"]}]';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<ProductModel> products = [];

  @override
  void initState() {
    var data = jsonDecode(productsJson);

    if (data is List) {
      products = data
          .map<ProductModel>(
            (p) => ProductModel.fromJson(p),
          )
          .toList();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Text(products[index].type ?? '');
        },
      ),
    );
  }
}
