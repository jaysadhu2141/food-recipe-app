import 'package:flutter/material.dart';
import './screens/fillter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, void Function() tapHandler) {
    return ListTile(leading: Icon(icon, size: 26),
      title: Text(title),
      onTap: tapHandler
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text('Cooking up!'),
            color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 20,),
            buildListTile('Food', Icons.restaurant,(){
              Navigator.of(context).pushReplacementNamed('/');
            }),
            buildListTile('Filter', Icons.settings,(){
              Navigator.of(context).pushReplacementNamed(FillterScreen.routeName);
            }),
        ],
      ),
    );
  }
}
