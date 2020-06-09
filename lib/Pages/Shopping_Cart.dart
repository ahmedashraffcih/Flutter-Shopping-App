import 'package:flutter/material.dart';
import '../Components/App_Bar.dart';
import 'package:flutter_shopping_app/Components/Constants.dart';
import '../Components/Shopping_Cart/Cart_Products.dart';


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

      body: CartProducts(),

      // Check Out
      bottomNavigationBar: Container(
        color: KBoxColor,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text('Total Amount'),
                subtitle: Text('40'),
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
