import 'package:flutter/material.dart';
import '../Components/Constants.dart';
import '../Components/App_Bar.dart';
import './Home_Page.dart';
import '../Components/TextFields.dart';
import './SignUp.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}
/*
class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      ShoppingAppBar(
        title: Text('Shopping App'),
        appThemedata: IconThemeData(color: KPrimaryBrightColor),
      ),
      ///****************************************************************************/
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 130,
          ),

          //Email Textfield.
          Textfield(label: 'Email', hint: 'Enter your email', icon: Icons.email, hideText: false,),
          ///****************************************************************************/
          //Password Textfield.
          Textfield(label: 'Password', hint: 'Enter your password', icon: Icons.vpn_key, hideText: true),
          ///****************************************************************************/
          //Log In button ButtonBar.
          ButtonBar(
            buttonMinWidth: 130,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right:98),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
                  },
                  child: Text('Log In',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: KPrimaryBrightColor,
                  textColor: Colors.white,
                  elevation: 5,
                ),
              ),
            ],
          ),
          ///****************************************************************************/
          Container(
            margin: EdgeInsets.only(top: 5,left: 35),
            child: Row(
              children: <Widget>[
                Text("If you don't have account press",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),

                FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                  },
                  child: Text('Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/
class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue[900],
                  Colors.blue[800],
                  Colors.blue[400]
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Colors.blue[100].withOpacity(0.5),
                                  blurRadius: 20,
                                  offset: Offset(0, 5)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                        Text("Forgot Password?", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 40,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue[900]
                          ),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}