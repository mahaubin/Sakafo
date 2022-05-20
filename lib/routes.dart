import 'package:flutter/material.dart';
import 'package:sakfo/screens/commande_screen.dart';
import 'package:sakfo/screens/home_screen.dart';
import 'package:sakfo/screens/login_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case ('/'):
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case ('/login'):
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case ('/commande'):
        return MaterialPageRoute(builder: (_) => CommandeScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("No Route"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Sorry no route was found",
            style: TextStyle(color: Colors.red, fontSize: 18.0),
          ),
        ),
      );
    });
  }
}
