import 'package:flutter/material.dart';
import '../Components/Constants.dart';

class Textfield extends StatelessWidget {

  Textfield({@required this.label, @required this.hint, @required this.icon, @required this.hideText});

  final String label;
  final String hint;
  final IconData icon;
  final bool hideText ;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: new InputDecoration(
          fillColor: KSubDarkColor,

          border:new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(40),
            ),
            borderSide: const BorderSide(color: KSubDarkColor,
            ),
          ),
          focusedBorder: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(40),
            ),
            borderSide: const BorderSide(color: KSubDarkColor,
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          hintText: hint,
          icon: Icon(icon,
            color: KPrimaryBrightColor,
            size: 30,),
        ),
        keyboardType: TextInputType.text,
        autocorrect: true,
        cursorColor: KPrimaryBrightColor,
        obscureText: hideText,
      ),
    );
  }
}