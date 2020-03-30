import 'package:flutter/material.dart';
import 'Category_Label_List.dart';

class H_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(icon: Icons.pan_tool,Title: 'SHIRT'),
        ],
      ),
    );
  }
}

