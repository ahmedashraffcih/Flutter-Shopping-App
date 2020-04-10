import 'package:flutter/material.dart';
import '../Components/Constants.dart';
import '../Components/App_Bar.dart';
import '../Components/FlushBar.dart';
import '../Components/Page_Routing_Animation.dart';
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
          Textfield(label: 'Email', hint: 'Enter your email', icon: Icons.email, hideText: false,email: true,
          controller: email,),
          ///****************************************************************************/
          //Password Textfield.
          Textfield(label: 'Password', hint: 'Enter your password', icon: Icons.vpn_key, hideText: true,email: false,
          controller: password,),
          ///****************************************************************************/
          //Confirm Password Textfield.
          Textfield(label: 'Confirm Password', hint: 'Confirm your password', icon: Icons.vpn_key, hideText: true,email: false,
          controller: confirmpassword,),
          //Log In button ButtonBar.
          ButtonBar(
            buttonMinWidth: 130,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right:98),
                child: RaisedButton(
                  onPressed: signUpaction,
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
                    Navigator.of(context).push(Router().router(LogIn()));
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

  //Textediting controllers to get data from textfields
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
///**********************************************************************
  
  //Method disposeEmail to remove the email controller from tree.
  void disposeEmail()
  {
    email.dispose();
    super.dispose();
  }
///**********************************************************************
  
  //Method disposePassword to remove the password controller from tree.
  void disposePassword()
  {
    password.dispose();
    super.dispose();
  }
///**********************************************************************
  
 //Method disposePassword to remove the password controller from tree.
  void disposeconfirmPassword()
  {
    confirmpassword.dispose();
    super.dispose();
  }
///**********************************************************************  
  void signUpaction()
  {
    if (email.text.isEmpty || !email.text.contains('@')) 
    {
      Warning().warningMessage(context, title: 'Email field error !', message: 'Please enter vaild email.');
    }
    else if(password.text.isEmpty) 
    {
      Warning().warningMessage(context, title: "Password field can't be empty !", message: "Please enter your password");
    }
    else if(confirmpassword.text.isEmpty) 
    {
      Warning().warningMessage(context, title: "Confirm Password field can't be empty !", message: "Please cofirm your password");
    }
    else
    {
      Navigator.of(context).push(Router().router(HomePage()));
    }
  }
}