import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_shopping_app/Constants.dart';
  Widget image_carousel = new Container(
    height: 200.0,
    child:  new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/w3.jpeg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/c1.jpg'),
        AssetImage('images/w4.jpeg'),
        AssetImage('images/m2.jpg'),
      ],
      autoplay: true,
      //showIndicator: false,
      dotBgColor: KSubDarkColor,
      dotColor: KPrimaryBrightColor,
      dotIncreasedColor: KPrimaryBrightColor,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 6.0,
      indicatorBgPadding: 2.0,
    ),
  );