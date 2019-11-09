import 'package:flutter/material.dart';
import 'package:my_delimeal/screens/categories_screen.dart';
import 'package:my_delimeal/screens/category_meals_screen.dart';
import 'package:my_delimeal/screens/meal_details_screen.dart';
import 'package:my_delimeal/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My DeliMeals',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName : (context) => CategoryMealsScreen(),
        MealDetailsScreen.routeName : (context) => MealDetailsScreen(),
      },
      //onGenerateRoute: ,
      onUnknownRoute: (setting){
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      } ,
    );
  }
}
