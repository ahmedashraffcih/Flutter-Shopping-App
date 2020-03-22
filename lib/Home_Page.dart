import 'package:flutter/material.dart';
import 'Reuseable_Inkwell.dart';
import 'package:flutter_shopping_app/Icon_Buttons.dart';
import 'Constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPLICATION BAR
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
                decoration: new BoxDecoration(
                  color: KBoxColor,
                ),
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

    );
  }
}
