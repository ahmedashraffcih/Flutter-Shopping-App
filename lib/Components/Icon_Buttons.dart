import 'package:flutter/material.dart';
class Icon_Buttons extends StatelessWidget {
  Icon_Buttons({this.icon,this.Button_color,this.OnPress});

  final Color Button_color;
  final IconData icon;
  final Function OnPress;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          icon,
          color: Button_color,
        ),
        onPressed: OnPress);
  }
}

