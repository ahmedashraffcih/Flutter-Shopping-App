import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Components/Constants.dart';

class Textfield extends StatelessWidget {

  Textfield({@required this.label, 
  @required this.hint, 
  @required this.icon, 
  @required this.hideText,
  @required this.controller,
  @required this.email
  })
  {
    if(email)
    {
      type = TextInputType.emailAddress;
      length = 35;
    }
    else{type = TextInputType.text;
      length = 200;
    }
  }

  final String label;
  final String hint;
  final IconData icon;
  final bool hideText ;
  final TextEditingController controller;
  final bool email;
  var type;
  int length;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: new InputDecoration(
          fillColor: KSubDarkColor,
          counter: Offstage(),
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
        keyboardType: type,
        cursorColor: KPrimaryBrightColor,
        obscureText: hideText,
        controller: controller,
        maxLength: length,
        maxLengthEnforced: true,
      ),
    );
  }
}