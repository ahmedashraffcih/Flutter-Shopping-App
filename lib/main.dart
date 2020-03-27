import 'package:flutter/material.dart';
import 'Home_Page.dart';
import 'Constants.dart';
//s
void main() => runApp(Ecommerce());

class Ecommerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: KSubDarkColor,
        scaffoldBackgroundColor: KPrimaryDarkColor,
        textTheme: TextTheme(
          body1: TextStyle(),
        ),
      ),
      home: HomePage(),
    );
  }
}