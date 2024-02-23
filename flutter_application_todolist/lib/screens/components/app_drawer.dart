import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            // ignore: prefer_const_constructors
            title: Text("side bar"),
          ),
          ListTile(
            // ignore: prefer_const_constructors
            leading: Icon(Icons.calendar_today),
            // ignore: prefer_const_constructors
            title: Text('date'),
            onTap: (){},
          ),
          // ignore: prefer_const_constructors
          Divider(
            height: 20,
            thickness: 5,
            ),
          ListTile(
            // ignore: prefer_const_constructors
            leading: Icon(Icons.alarm),
            // ignore: prefer_const_constructors
            title: Text('alarm'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}