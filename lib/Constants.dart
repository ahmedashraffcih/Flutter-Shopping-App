import 'package:flutter/material.dart';

const KPrimaryDarkColor = Color(0xFF0c2233);
const KSubDarkColor = Color(0xFF065471);
const KBoxColor = Color(0xFF0a91ab);
const KPrimaryBrightColor = Color(0xFFffc045);

const KCategoryTextStyle = TextStyle(
    fontSize: 15.0, fontWeight: FontWeight.bold, color: Color(0xFFffc045));

const KProductNameTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFFffc045),
);

const KProductPriceTextStyle = TextStyle(
  color: Color(0xFFffc045),
  fontWeight: FontWeight.w900,
);

const KDrawerBoxDecoration = BoxDecoration(
    color: KBoxColor,
    borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0)),
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.10),
        blurRadius: 4.0,
        spreadRadius: 1.0,
        offset: Offset(
          0,
          4.0,
        ),
      )
    ]
);
const KProductCardDecoration = BoxDecoration(
    color: KBoxColor,
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.10),
        blurRadius: 4.0,
        spreadRadius: 1.0,
        offset: Offset(
          0,
          4.0,
        ),
      )
    ]
);
