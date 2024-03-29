import 'package:flutter/material.dart';
import 'package:my_app/constants/styles.dart';
import 'package:my_app/routes.dart';
import 'package:my_app/screens/category_meals_screen.dart';
import 'package:my_app/screens/filters_screen.dart';
import 'package:my_app/screens/meal_detail_screen.dart';
import 'package:my_app/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        cardTheme: ThemeData.light().cardTheme.copyWith(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(CardStyle.borderRadius),
              ),
              margin: EdgeInsets.all(10),
            ),
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      home: TabsScreen(),
      routes: {
        ERoutes.CategoryMealsScreen: (_) => CategoryMealsScreen(),
        ERoutes.MealDetailScreen: (_) => MealDetailScreen(),
        ERoutes.FilterScreen: (_) => FiltersScreen(),
      },
    );
  }
}
