import 'package:flutter/material.dart';
import 'dummy-data.dart';
class CategoryMealsScreen extends StatelessWidget {
  static const routeName = 'category-meals-screen';
//  final String catId;
//  final String catTitle;
//
//  CategoryMealsScreen(this.catId, this.catTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final catTitle = routeArgs['title'];
    final catId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(catId);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(catTitle),),
      body: ListView.builder(itemBuilder: (context,index){
        return Text(categoryMeals[index].title);
      } , itemCount: categoryMeals.length,),
    );
  }
}
