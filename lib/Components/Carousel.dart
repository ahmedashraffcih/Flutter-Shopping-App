import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_shopping_app/Components/Constants.dart';
  Widget image_carousel = new Container(
    height: 200.0,
    child:  Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/Carsuol1.jpg'),
        AssetImage('images/Carsuol1.jpg'),
        AssetImage('images/Carsuol1.jpg'),
        AssetImage('images/Carsuol1.jpg'),
        AssetImage('images/Carsuol1.jpg'),
      ],
      autoplay: true,
      //showIndicator: false,
      dotBgColor: KSubDarkColor,
      dotColor: KPrimaryBrightColor,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 6.0,
      indicatorBgPadding: 2.0,
    ),
  );