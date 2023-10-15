import 'package:flutter/material.dart';
import 'package:longapp/Resources/TextManager.dart';
import 'package:longapp/screen/home.dart';
import 'package:longapp/screen/login.dart';

class RoutesManager {
  static const String home = "./home";
  static const String login = "./login";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesManager.login:
        return MaterialPageRoute(builder: (_) => const Login());
      case RoutesManager.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(TextManager.noRoutes),
              ),
              body: const Center(child: Text(TextManager.noRoutes)),
            ));
  }
}
