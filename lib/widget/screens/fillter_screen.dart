import 'package:flutter/material.dart';
import 'package:food_recipe/widget/main_drawer.dart';

class FillterScreen extends StatefulWidget {
  static const routeName = '/fillter';


  @override
  _FillterScreenState createState() => _FillterScreenState();
}

class _FillterScreenState extends State<FillterScreen> {
    bool _gultenFree = false;
    bool _lactoseFree = false;
    bool _vegan = false;
    bool _vegetarian = false;

 Widget _buildSwitchListTile(String title, String description, bool currentValue, void Function(bool) updateValue,){
   return SwitchListTile(title: Text(title),
     value: currentValue,
     subtitle: Text(description),
     onChanged: updateValue,
   );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('your fillter'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
            Container(padding: EdgeInsets.all(20), child: Text('Adjust your meal selection'),
            ),
          Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTile(
                    'gulten-free',
                    'only include gulten free food',
                     _gultenFree,
                      (newValue){
                          setState(() {
                            _gultenFree = newValue;
                          },
                          );
                      },
                  ),
                  _buildSwitchListTile(
                    'vegan',
                    'only include vegan food',
                    _vegan,
                        (newValue){
                      setState(() {
                        _vegan = newValue;
                      },
                      );
                    },
                  ),
                  _buildSwitchListTile(
                    'lactose-free',
                    'only include lactose free food',
                    _lactoseFree,
                        (newValue){
                      setState(() {
                        _lactoseFree = newValue;
                      },
                      );
                    },
                  ),
                  _buildSwitchListTile(
                    'vegetarian',
                    'only include vegetarian food',
                    _vegetarian,
                        (newValue){
                      setState(() {
                        _vegetarian = newValue;
                      },
                      );
                    },
                  ),


    ],
              ),
          ),
        ],

      ),
      );

  }
}
