import 'package:indigo/pages/auth/login/login_page.dart';
import 'package:indigo/pages/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:indigo/pages/homepage/home_page_provider.dart';
import 'package:provider/provider.dart';

class AppRoutes {
  static const login = '/';
  static const homepage = '/homepage';

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    PageArguments? pageArguments;
    if (settings.arguments != null) {
      pageArguments = (settings.arguments as PageArguments);
    }

    var routes = <String, WidgetBuilder>{
      AppRoutes.login: (context) => const LoginPage(),
      AppRoutes.homepage: (context) => HomePageWidget(),
    };

    WidgetBuilder builder = routes[settings.name] ?? routes.values.first;
    return MaterialPageRoute(builder: (ctx) => builder(ctx));
  }
}

class PageArguments {
  final String? pageTitle;
  final Map<String, dynamic>? data;

  PageArguments({
    this.pageTitle,
    this.data,
  });
}
