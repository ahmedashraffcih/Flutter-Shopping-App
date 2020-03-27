import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Constants.dart';

class Product_Details_Button extends StatelessWidget {
  Product_Details_Button({@required this.textButton,@required this.buttonContent});
  final String textButton;
  final String buttonContent;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(textButton),
                  content: Text(buttonContent),
                  actions: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop(context);
                      },
                      child: Text("CLOSE"),
                    )
                  ],
                );
              });
        },
        color: KPrimaryDarkColor,
        textColor: KPrimaryBrightColor,
        elevation: 0.2,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(textButton)),
            Expanded(
              child: Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }
}
