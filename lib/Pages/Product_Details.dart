import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Components/Constants.dart';
import 'package:flutter_shopping_app/Components/Icon_Buttons.dart';
import 'package:flutter_shopping_app/Components/Product_Details_Button.dart';
import '../Components/App_Bar.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails(
      {this.productDetailName,
      this.productDetailPicture,
      this.productDetailPrice});
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
      appBar: ShoppingAppBar(
        title: Text('Shopping App'),
        icon1: Icons.search,
        icon2: Icons.shopping_cart,
        appThemedata: IconThemeData(color: KPrimaryBrightColor),
        pressButton1: (){},
      ),

      body: new ListView(
        children: <Widget>[
          // Product Picture
          Container(
            height: 300.0,
            child: Container(
              color: Colors.white,
              child: Image.asset(widget.productDetailPicture),
            ),
          ),

          //Name and Price
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 12.0, bottom: 8.0),
                child: Text(
                  widget.productDetailName,
                  style: KProductDetailsNameTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 12.0),
                child: Text(
                  "${widget.productDetailPrice}\.00 EGP",
                  style: KProductDetailsPriceTextStyle,
                ),
              ),
            ],
          ),

          Divider(),

          // +++++ Choosing Menu +++++
          Row(
            children: <Widget>[
              //size
              Product_Details_Button(
                textButton: "Size",
                buttonContent: "Choose Size",
              ),

              //Color
              Product_Details_Button(
                textButton: "Color",
                buttonContent: "Choose Color",
              ),

              //Qty
              Product_Details_Button(
                textButton: "Qty",
                buttonContent: "Choose Color",
              ),
            ],
          ),

          // --- BUY NOW --
          Row(
            children: <Widget>[
              // ---- Size ----
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: KPrimaryBrightColor,
                    textColor: KPrimaryDarkColor,
                    elevation: 0.2,
                    child: Text("Buy Now")),
              ),
              new Icon_Buttons(
                icon: Icons.shopping_cart,
                Button_color: KPrimaryBrightColor,
              ),
              new Icon_Buttons(
                icon: Icons.favorite_border,
                Button_color: KPrimaryBrightColor,
              ),
            ],
          ),
          Divider(),


          // PRODUCT DETAILS
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 7.0),
              child: Text(
                "Product Description",
                style: KProductDescriptionTitleTextStyle,
              ),
            ),
            subtitle: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
              style: KProductDescriptionTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
