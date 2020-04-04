import 'package:flutter/material.dart';
import 'Components/Constants.dart';
import './Pages/Defult_Home_Screen.dart';

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
      home: DefultHomePage(),
    );
  }
}