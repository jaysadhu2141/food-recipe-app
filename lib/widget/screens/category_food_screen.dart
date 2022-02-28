import 'package:flutter/material.dart';
import 'package:food_recipe/widget/food_item.dart';
import '../../../dummydata.dart';

class CategoryFoodScreen extends StatelessWidget{
  static const routeName = '/category-food';


  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryFood = DUMMY_FOOD.where((food) {
      return food.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return FoodItem(
                        id: categoryFood[index].id,
                        title: categoryFood[index].title,
                        imageUrl: categoryFood[index].imageUrl,
                        duration: categoryFood[index].duration,
                        complexity: categoryFood[index].complexity,
                        affordability: categoryFood[index].affordability,

        );
      }, itemCount: categoryFood.length,),
    );
  }
}
