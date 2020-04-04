import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Components/Carousel.dart';
import '../Components/Constants.dart';
import '../Components/Horizontal_List_View.dart';
import '../Components/Products.dart';
import '../Components/Reuseable_Inkwell.dart';
import '../Components/App_Bar.dart';
import 'Shopping_Cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //APPLICATION BAR
    appBar: ShoppingAppBar(
      title: Text('Shopping App'),
      icon1: Icons.search,
      icon2: Icons.shopping_cart,
      appThemedata: IconThemeData(color: KPrimaryBrightColor),
      pressButton1: (){},
      pressButton2: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> new ShoppingCart()));
      },
    ),

      //Drawer or Side Bar
      drawer: new Drawer(
        child: Container(
          color: KSubDarkColor,
          child: new ListView(
            children: <Widget>[
//            header : DATA
              new UserAccountsDrawerHeader(
                //Data goes here
                accountName: Text('Ahmed Ashraf'),
                accountEmail: Text('ahmedfcih@gmail.com'),

                // User Picture
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: KSubDarkColor,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),

                //Box holding first section (User Data)
                decoration: KDrawerBoxDecoration,
              ),

              //Drawer Body
              Reuseable_Inkwell(
                InkTitle: 'Home Page',
                icon: Icons.home,
              ),
              Reuseable_Inkwell(
                InkTitle: 'My account',
                icon: Icons.person,
              ),
              Reuseable_Inkwell(
                InkTitle: 'My Orders',
                icon: Icons.shopping_basket,
              ),
              Reuseable_Inkwell(
                InkTitle: 'Categoris',
                icon: Icons.dashboard,
              ),
              Reuseable_Inkwell(
                InkTitle: 'Settings',
                icon: Icons.settings,
              ),
              Reuseable_Inkwell(
                InkTitle: 'About',
                icon: Icons.help,
              ),
            ],
          ),
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //Carousel
          image_carousel,
          //Padding Widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          //View List 'Categories'
          H_List(),

          //Products
          Container(
            margin: EdgeInsets.all(20.0),
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}


