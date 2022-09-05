import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:indigo/models/product_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  void initState() {
    _getProductsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        automaticallyImplyLeading: false,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Text('Home');
  }

  void _getProductsData() async {
    final dioClient = Dio();
    dioClient.options = BaseOptions(
        baseUrl: 'https://my-json-server.typicode.com/narekpog/my-json/');

    final result = await dioClient.get(
      'products',
      queryParameters: {
        'name': 'Bob',
        'age': 12,
      },
    );

    if (result.data is List) {
      var products =
          result.data.first.map((e) => ProductModel.fromJson(e)).toList();

      print(products);
    }
  }
}
