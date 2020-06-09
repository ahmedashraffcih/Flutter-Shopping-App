import 'package:flutter/material.dart';
import './Constants.dart';
import './Products.dart';
class Search extends SearchDelegate<String>
{
  final products = ["Blazer", "Jacket", "Shirts", "T-Shirts", "Pants", "Shoes"];
  final recent = ["Shoes", "Shirts"];
  
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(
      icon: Icon(Icons.clear), 
      onPressed: (){
        query = "";
      },
     )];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, 
        progress: transitionAnimation,
        ), 
      onPressed: (){
        close(context, null);
      },
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(20.0),
            height: 320.0,
            child: Products(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
    ?recent
    :products.where((p)=> p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context,index)=>ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.add_shopping_cart),
        title: RichText(text: TextSpan(
          text: suggestions[index].substring(0,query.length),
          style: KProductNameTextStyle,
          children: [
            TextSpan(
              text: suggestions[index].substring(query.length),
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
         ),
        ),
      ),
      itemCount: suggestions.length,
    );
  }
  
}