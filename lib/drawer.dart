import 'package:flutter/material.dart';

class DrawerNo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          DrawerHeader(
            child: Row(
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 100.0,
                  textDirection: TextDirection.rtl,
                ),
                Text("ABD Bastola",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.cyanAccent,
                      fontStyle: FontStyle.normal
                  ),)
              ],

            ),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            leading: Icon(Icons.threed_rotation),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            leading: Icon(Icons.add_circle),
            onTap: () {

              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}