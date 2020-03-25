import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Constants.dart';
import 'Product_Details.dart';
class Single_Product extends StatelessWidget {
  Single_Product({this.product_name, this.product_pic, this.product_price});
  final product_name;
  final product_pic;
  final product_price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.of(context).push(
                  MaterialPageRoute(builder:(context) => new ProductDetails())),
              child: GridTile(
                footer: Container(
                  color: KPrimaryDarkColor,
                  child: ListTile(
                    leading: Text(product_name,style: KProductNameTextStyle,),
                    title: Text('\$$product_price',style: KProductPriceTextStyle,),
                  ),
                ) ,
                child: Image.asset(product_pic,fit: BoxFit.cover,),
              ),
            ),
          )),
    );
  }
}
