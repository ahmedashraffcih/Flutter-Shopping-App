import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Icon_Buttons.dart';
import 'Constants.dart';

class ShoppingAppBar extends AppBar {
  ShoppingAppBar({
    Key key,
    Widget title,
    IconData icon1,
    IconData icon2,
    Function pressButton1,
    Function pressButton2,
    IconThemeData appThemedata,
  }) : super(key: key, title: title, iconTheme:appThemedata,elevation :0.1 ,actions: <Widget>[
    Icon_Buttons(icon: icon1,Button_color: KPrimaryBrightColor,OnPress:pressButton1),
    Icon_Buttons(icon: icon2,Button_color: KPrimaryBrightColor,OnPress:pressButton2),
  ]);
}