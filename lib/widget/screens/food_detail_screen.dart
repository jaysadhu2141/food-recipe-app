import 'package:flutter/material.dart';
import 'package:food_recipe/dummydata.dart';

class FoodDetailScreen extends StatelessWidget {
    static const routeName = '/food-detail';

    Widget buildSectionTitle(BuildContext context, String text)
    {
     return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Text(
           text,
        ),
      );
    }

    Widget buildContainer(Widget child) {
      return Container(
          decoration: BoxDecoration(color: Colors.white,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 200, width: 300,
      child: child
      );
    }

  @override
  Widget build(BuildContext context) {
    final foodId = ModalRoute.of(context)!.settings.arguments as String;
    final SelectedFood = DUMMY_FOOD.firstWhere((food) => food.id == foodId);
    return Scaffold(
      appBar: AppBar(title: Text('${SelectedFood.title}'),),
      body: SingleChildScrollView(child: Column(children: <Widget>[
        Container(height: 300, width: double.infinity, child: Image.network(SelectedFood.imageUrl,
        fit: BoxFit.cover
        ),
        ),
        buildSectionTitle(context, 'ingredients'),
        buildContainer(ListView.builder(
          itemBuilder: (ctx, index) => Card(
            color: Theme.of(context).accentColor,
            child: Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10,),
              child: Text(SelectedFood.ingredients[index]
            ),),
          ),
          itemCount: SelectedFood.ingredients.length,),
        ),
        buildSectionTitle(context, 'Steps'),
        buildContainer(ListView.builder(
          itemBuilder: (ctx, index) => Column(children:[ListTile(
            leading: CircleAvatar(
              child: Text('# ${(index+1)}'),
            ),
            title: Text(
              SelectedFood.steps[index],
            ),
          ),Divider(),],

          ),
          itemCount: SelectedFood.steps.length,
        ),
        ),
      ],
      ),
      ),

    );
  }
}
