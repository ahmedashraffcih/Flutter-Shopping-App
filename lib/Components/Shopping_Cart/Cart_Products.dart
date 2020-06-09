import 'package:flutter/material.dart';
import 'Single_Card_Product.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}
/*
dependencies:
  firebase_analytics: ^5.0.2
  firebase_auth: ^0.14.0+5
  cloud_firestore: ^0.12.9+5

class AuthenticationService {
  Future loginWithEmail({@required String email, @required String password}) {
    return null;
  }
  Future signUpWithEmail({@required String email, @required String password}) {
    return null;
  }
}
Future loginWithEmail({
    @required String email,
    @required String password,
}) async {
    try {
        var user = await _firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
        return user != null;
    } catch (e) {
        return e.message;
    }
}
*/
class _CartProductsState extends State<CartProducts> {
  final productsOnCard = [
    {
      "name": "Blazer",
      "picture": "images/blazer.jpg",
      "price": 20,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Blazer",
      "picture": "images/blazer.jpg",
      "price": 20,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsOnCard.length,
        itemExtent: 100,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cartProductName: productsOnCard[index]["name"],
            cartProductPic: productsOnCard[index]["picture"],
            cartProductPrice: productsOnCard[index]["price"],
            cartProductColor: productsOnCard[index]["color"],
            cartProductQty: productsOnCard[index]["quantity"],
            cartProductSize: productsOnCard[index]["size"],
          );
        });
  }
}
