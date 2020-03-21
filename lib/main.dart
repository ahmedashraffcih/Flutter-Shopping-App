import 'package:flutter/material.dart';
import 'Reuseable_Inkwell.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Shopping App'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//            header
            new UserAccountsDrawerHeader(
              accountName: Text('Ahmed Ashraf'),
              accountEmail: Text('ahmedfcih@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.red.shade800,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.red
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
    );
  }
}

