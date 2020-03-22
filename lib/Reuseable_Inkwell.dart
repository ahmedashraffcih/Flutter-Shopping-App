import 'package:flutter/material.dart';

class Reuseable_Inkwell extends StatelessWidget {

  Reuseable_Inkwell({this.InkTitle,this.OnPress,this.icon,this.iconColor});

  final String InkTitle;
  final Function OnPress;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnPress,
      child: ListTile(
        title: Text(InkTitle),
        leading: Icon(icon,color:iconColor,),
      ),
    );
  }
}
