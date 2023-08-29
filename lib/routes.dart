import 'package:flutter/material.dart';
import 'package:mamas_recipe/firstScreen.dart';
import 'package:mamas_recipe/splashScreen.dart';
import 'arguments.dart';
import 'home.dart';

class Routes {
  static const defaultRoute = "/";
  static const homeRoute = "/Home";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case defaultRoute:
        var args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case homeRoute:
        var args = settings.arguments as HomeArguments;
        return MaterialPageRoute(
            builder: (_) => Home(
                // email: args.email,
                // name: args.name,
                // password: args.password,
                ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}
