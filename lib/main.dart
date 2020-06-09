import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Pages/SignUp.dart';
import 'Pages/Home_Page.dart';
import 'Pages/Defult_Home_Screen.dart';
import 'Components/Constants.dart';
import 'package:flutter_shopping_app/Pages/LogIn.dart';
import 'package:flutter_shopping_app/Pages/SignUp.dart';
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
      //home: HomePage(),
      home: SignUp()
    );
  }
}