// ignore_for_file: prefer_conditional_assignment

import 'package:dio/dio.dart';
import 'package:indigo/api/products/products_api.dart';

class IndigoAPI {
  static IndigoAPI? _singleton;

  late ProductsApi products;
  Dio appDioClient = Dio();

  factory IndigoAPI() {
    if (_singleton == null) {
      _singleton = IndigoAPI._internal();
    }
    return _singleton!;
  }

  IndigoAPI._internal() {
    // Init subclasses
    products = ProductsApi(appDioClient);
  }
}
