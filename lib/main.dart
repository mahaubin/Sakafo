import 'package:flutter/material.dart';
import 'package:sakfo/palette.dart';
import 'package:sakfo/routes.dart';
import 'package:sakfo/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
      ),
      initialRoute: '/login',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
