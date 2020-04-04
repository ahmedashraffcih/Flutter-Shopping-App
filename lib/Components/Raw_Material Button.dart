import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Components/Constants.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed,this.iconColor});

  final IconData icon;
  final Function onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: iconColor,),
      onPressed: onPressed,
      shape: CircleBorder(),
      elevation: 0.0,
      fillColor: KPrimaryDarkColor,
      constraints: BoxConstraints.tightFor(
        width: 30.0,
        height: 30.0,
      ),
    );
  }
}
