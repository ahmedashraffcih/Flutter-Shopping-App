import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Constants.dart';
import 'package:flutter_shopping_app/Icon_Buttons.dart';
import 'package:flutter_shopping_app/Product_Details_Button.dart';


class ProductDetails extends StatefulWidget {

  ProductDetails({this.productDetailName,this.productDetailPicture,this.productDetailPrice});
  final productDetailName;
  final productDetailPrice;
  final productDetailPicture;
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        //This Style for the Drawer Icon
        //any Variable 'K' which if for constants.dart
        iconTheme: new IconThemeData(color: KPrimaryBrightColor),

        //Bar Dropshadow
        elevation: 0.1,
        title: Text('Shopping App'),

        actions: <Widget>[
          //Search
          Icon_Buttons(
            icon: Icons.search,
            Button_color: KPrimaryBrightColor,
          ),
          //Chart
          Icon_Buttons(
            icon: Icons.shopping_cart,
            Button_color: KPrimaryBrightColor,
          )
        ],
      ),

      body: new ListView(
        children: <Widget>[

          // Picture
          Container(
            height: 300.0,
            child: Container(
              color: Colors.white,
              child: Image.asset(widget.productDetailPicture),
            ),
          ),

          //Name and Price
          Container(
            child: ListTile(
              leading: Text(widget.productDetailName,style: KProductNameTextStyle,),
              title: Text("\$${widget.productDetailPrice}",style: KProductPriceTextStyle,),
            ),
          ),

          // +++++The First Button+++++
          Row(
            children: <Widget>[
              Product_Details_Button(textButton: "Size",),
              Product_Details_Button(textButton: "Color",),
              Product_Details_Button(textButton: "Qty",),
            ],
          ),

          Row(
            children: <Widget>[
              // ---- Size ----
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: KPrimaryBrightColor,
                  textColor: KPrimaryDarkColor,
                  elevation: 0.2,
                  child: Text("Buy Now")
                ),
              ),
              new Icon_Buttons(icon: Icons.shopping_cart,Button_color: KPrimaryBrightColor,),
              new Icon_Buttons(icon: Icons.favorite_border,Button_color: KPrimaryBrightColor,),
            ],
          ),
        ],
      ),
    );
  }
}

