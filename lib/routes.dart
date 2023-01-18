import 'package:easychange/screens/landing.dart';
import 'package:easychange/screens/login.dart';
import 'package:easychange/screens/register.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static MaterialPageRoute materialRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/landing":
        return MaterialPageRoute(builder: (context) => Landing());
      case "/login":
        return MaterialPageRoute(builder: (context) => Login());
      case "/register":
        return MaterialPageRoute(builder: (context) => Register());
      default:
        return MaterialPageRoute(builder: (context) => Login());
    }
  }
}
