import 'package:flutter/material.dart';
import 'App_Bar.dart';
import 'package:flutter_shopping_app/Constants.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ShoppingAppBar(
        title: Text('Shopping Cart'),
        icon2: Icons.search,
        appThemedata: IconThemeData(color: KPrimaryBrightColor),
        pressButton1: () {},
      ),
      bottomNavigationBar: Container(
        color: KBoxColor,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text('Total Amount'),
                subtitle: Text('230'),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: Text('Check Out',style: TextStyle(color: KPrimaryDarkColor),),
                color: KPrimaryBrightColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
