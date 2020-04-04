import 'package:flutter/material.dart';
import '../Components/Constants.dart';
import '../Components/App_Bar.dart';
import './Home_Page.dart';
import '../Components/TextFields.dart';
import './LogIn.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            height: 100,
          ),

          //Email Textfield.
          Textfield(label: 'Email', hint: 'Enter your email', icon: Icons.email, hideText: false,),
///****************************************************************************/          
          //Password Textfield.
          Textfield(label: 'Password', hint: 'Enter your password', icon: Icons.vpn_key, hideText: true),
///****************************************************************************/          
          //Confirm Password Textfield.
          Textfield(label: 'Confirm Password', hint: 'Confirm your password', icon: Icons.vpn_key, hideText: true),
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
                  child: Text('Sign Up',
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
        ],
      ),
    );
  }
}