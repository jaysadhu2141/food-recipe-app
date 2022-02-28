import 'package:flutter/material.dart';
import 'package:food_recipe/widget/screens/fillter_screen.dart';
import 'package:food_recipe/widget/screens/categories_screen.dart';
import 'package:food_recipe/widget/screens/category_food_screen.dart';
import 'package:food_recipe/widget/screens/food_detail_screen.dart';
import 'package:food_recipe/widget/screens/tabs_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Recipe',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryFoodScreen.routeName: (ctx) => CategoryFoodScreen(),
        FoodDetailScreen.routeName: (ctx) => FoodDetailScreen(),
        FillterScreen.routeName: (ctx) => FillterScreen(),
      },
      onGenerateRoute: (settings){
        print(settings.arguments);

      },
      onUnknownRoute: (settings){
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}





