import 'package:flutter/material.dart';
import 'Product_Card.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/blazer.jpg",
      "price": 20,

      "name": "Blazer",
      "picture": "images/blazer.jpg",
      "price": 20,

      "name": "Blazer",
      "picture": "images/blazer.jpg",
      "price": 20,

      "name": "Blazer",
      "picture": "images/blazer.jpg",
      "price": 20,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_Product(
            product_name: product_list[index]['name'],
            product_pic: product_list[index]['picture'],
            product_price: product_list[index]['price'],
          );
        });
  }
}
