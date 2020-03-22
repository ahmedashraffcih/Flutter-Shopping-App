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
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: KPrimaryBrightColor),
        elevation: 0.1,
        title: Text('Shopping App'),
        actions: <Widget>[
          Icon_Buttons(icon: Icons.search,Button_color: KPrimaryBrightColor,),
          Icon_Buttons(icon: Icons.shopping_cart,Button_color: KPrimaryBrightColor,)
        ],
      ),

      drawer: new Drawer(
        child: Container(
          color: KSubDarkColor,
          child: new ListView(
            children: <Widget>[
//            header
              new UserAccountsDrawerHeader(
                accountName: Text('Ahmed Ashraf'),
                accountEmail: Text('ahmedfcih@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: KSubDarkColor,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
                decoration: new BoxDecoration(
                    color: KBoxColor,
                ),
              ),
//            body
              Reuseable_Inkwell(InkTitle: 'Home Page',icon: Icons.home,),
              Reuseable_Inkwell(InkTitle: 'My account',icon: Icons.person,),
              Reuseable_Inkwell(InkTitle: 'My Orders',icon: Icons.shopping_basket,),
              Reuseable_Inkwell(InkTitle: 'Categoris',icon: Icons.dashboard,),
              Reuseable_Inkwell(InkTitle: 'Settings',icon: Icons.settings,),
              Reuseable_Inkwell(InkTitle: 'About',icon: Icons.help,),
            ],
          ),
        ),
      ),
    );
  }
}
