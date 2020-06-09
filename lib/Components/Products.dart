import 'package:flutter/material.dart';
import 'Product_Card.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
//****************Blazers for men************************************/    
    {
      "name": "Blazer",
      "picture": "images/blazer for men1.jpg",
      "price": 100,
    },
    {
      "name": "Blazer",
      "picture": "images/blazer for men2.jpg",
      "price": 120,
    },
//****************Blazers for women************************************/ 
    {
      "name": "Blazer",
      "picture": "images/blazer for women1.jpg",
      "price": 110,
    },
    {
      "name": "Blazer",
      "picture": "images/blazer for women2.jpg",
      "price": 90,
    },
//****************Shirts for men************************************/ 
    {
      "name": "Shirt",
      "picture": "images/shirts for men1.jpg",
      "price": 70,
    },
    {
      "name": "Shirt",
      "picture": "images/shirts for men2.jpg",
      "price": 90,
    },
//****************Shirts for women************************************/    
    {
      "name": "Shirt",
      "picture": "images/shirts for women1.jpg",
      "price": 95,
    },
    {
      "name": "Shirt",
      "picture": "images/shirts for women2.jpg",
      "price": 115,
    },
//****************Jackets for men************************************/     
    {
      "name": "Jacket",
      "picture": "images/jacket for men1.jpg",
      "price": 220,
    },
    {
      "name": "Jacket",
      "picture": "images/jacket for men2.jpg",
      "price": 280,
    },
//****************Jackets for women************************************/     
    {
      "name": "Jacket",
      "picture": "images/jacket for women1.jpg",
      "price": 180,
    },
    {
      "name": "Jacket",
      "picture": "images/jacket for women2.jpg",
      "price": 290,
    },
//****************T-Shirts for men************************************/     
    {
      "name": "T-Shirt",
      "picture": "images/t-shirts for men1.jpg",
      "price": 60,
    },
    {
      "name": "T-Shirt",
      "picture": "images/t-shirts for men2.jpg",
      "price": 75,
    },
//****************T-Shirts for women************************************/    
    {
      "name": "T-Shirt",
      "picture": "images/t-shirts for women1.jpg",
      "price": 95,
    },
    {
      "name": "T-Shirt",
      "picture": "images/t-shirts for women2.jpg",
      "price": 85,
    },
//****************Pants for men************************************/     
    {
      "name": "Pants",
      "picture": "images/Pants for men2.jpg",
      "price": 150,
    },
    {
      "name": "Pants",
      "picture": "images/Pants for men4.jpg",
      "price": 120,
    },
//****************Pants for women************************************/     
    {
      "name": "Pants",
      "picture": "images/Pants for women1.jpg",
      "price": 180,
    },
    {
      "name": "Pants",
      "picture": "images/Pants for women3.jpg",
      "price": 210,
    },
//****************Casual shoes for men************************************/   
    {
      "name": "Shoes",
      "picture": "images/casual shoes for men1.jpg",
      "price": 180,
    },
    {
      "name": "Shoes",
      "picture": "images/casual shoes for men2.jpg",
      "price": 165,
    },
//****************Casual shoes for women************************************/    
    {
      "name": "Shoes",
      "picture": "images/casual shoes for women1.jpg",
      "price": 150,
    },
    {
      "name": "Shoes",
      "picture": "images/casual shoes for women2.jpg",
      "price": 195,
    },
//****************Classic shoes for men************************************/    
    {
      "name": "Shoes",
      "picture": "images/classic shoes for men1.jpg",
      "price": 150,
    },
    {
      "name": "Shoes",
      "picture": "images/classic shoes for men2.jpg",
      "price": 200,
    },
//****************Classic shoes for women************************************/    
    {
      "name": "Shoes",
      "picture": "images/classic shoes for women1.jpg",
      "price": 160,
    },
    {
      "name": "Shoes",
      "picture": "images/classic shoes for women2.jpg",
      "price": 180,
    },
//****************************************************/    
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
