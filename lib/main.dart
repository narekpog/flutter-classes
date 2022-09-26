import 'package:indigo/base/routes.dart';
import 'package:flutter/material.dart';
import 'package:indigo/pages/homepage/home_page_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
