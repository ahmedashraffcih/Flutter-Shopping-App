import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Components/Constants.dart';
import '../Raw_Material Button.dart';

/*
class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}
Container(
            margin: EdgeInsets.only(top: 5,left: 35),
            child: Row(
              children: <Widget>[
                Text("If you already have account press",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),

                FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                  },
                  child: Text('Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
*/
class SingleCartProduct extends StatefulWidget {
  int count = 0;
  SingleCartProduct(
      {this.cartProductColor,
      this.cartProductName,
      this.cartProductPic,
      this.cartProductPrice,
      this.cartProductQty,
      this.cartProductSize});

  final cartProductName;
  final cartProductPic;
  final cartProductPrice;
  final cartProductSize;
  final cartProductColor;
  final cartProductQty;
  @override
  _SingleCartProductState createState() => _SingleCartProductState();
}

class _SingleCartProductState extends State<SingleCartProduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: KBoxColor,
      child: ListTile(
        //========= Leading =========
        leading: Image.asset(widget.cartProductPic),

        //========= Title =========
        title: Text(widget.cartProductName),

        //========= SubTitle Information =========
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("SIZE :  " + widget.cartProductSize),
            Text("COLOR :  " + widget.cartProductColor),
            Text("Price :  " + widget.cartProductPrice.toString() + " \$"),
          ],
        ),

        //========= Add or delete =========
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Row(
            children: <Widget>[
              RoundIconButton(
                icon: Icons.add,
                iconColor: KPrimaryBrightColor,
                onPressed: () {
                  setState(() {
                    widget.count++;
                  });
                },
              ),
              Text(widget.count.toString(), style: KCartCountTextStyle),
              RoundIconButton(
                icon: Icons.remove,
                iconColor: KPrimaryBrightColor,
                onPressed: () {
                  setState(() {
                    if(widget.count >=1)
                      {
                        widget.count--;
                      }
                    else
                      {
                        widget.count=0;
                      }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
