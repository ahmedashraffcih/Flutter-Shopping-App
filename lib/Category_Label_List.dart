import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/Constants.dart';

class Category extends StatelessWidget {

  Category({this.icon,this.Title});
  final IconData icon;
  final String Title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Icon(icon,size: 30.0,color: KPrimaryBrightColor,),
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(Title,style: KCategoryTextStyle,)
            ),
          ),
        ),
      ),
    );
  }
}
