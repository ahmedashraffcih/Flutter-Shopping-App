import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Constants.dart';

class Product_Details_Button extends StatelessWidget {

  Product_Details_Button({this.textButton});
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        onPressed: (){},
        color: KBoxColor,
        textColor: KPrimaryDarkColor,
        elevation: 0.2,
        child: Row(
          children: <Widget>[
            Expanded(
                child:Text(textButton)
            ),
            Expanded(
              child: Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }
}
