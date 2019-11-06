import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
//  final String catId;
//  final String catTitle;
//
//  CategoryMealsScreen(this.catId, this.catTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final catTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(title: Text(catTitle),),
      body: Center(
        child: Text('Recipes!'),
      ),
    );
  }
}
