import 'package:flutter/material.dart';
import '../Components/Constants.dart';
import '../Components/App_Bar.dart';
import '../Components/Horizontal_List_View.dart';
import '../Components/Products.dart';
import '../Components/Carousel.dart';
import './SignUp.dart';


class DefultHomePage extends StatefulWidget {
  @override
  _DefultHomePageState createState() => _DefultHomePageState();
}

class _DefultHomePageState extends State<DefultHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      ShoppingAppBar(
       title: Text('                  Shopping App'),
       icon2: Icons.person_add,
       appThemedata: IconThemeData(color: KPrimaryBrightColor),
       pressButton2: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
       },
      ),
///****************************************************************************/
      body: ListView(
        children: <Widget>[
           image_carousel,
           H_List(),

           Container(
            margin: EdgeInsets.all(20.0),
            height: 320.0,
            child: Products(),
          ),
///****************************************************************************/          
        ],
      ),
    );
  }
}