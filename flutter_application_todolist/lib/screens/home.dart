import 'package:flutter/material.dart';
import 'components/app_drawer.dart';
import 'components/body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("To Do List"),
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('task complete'),
              ),
              PopupMenuItem(
                child: Text('all task'),
              ),
            ],
          )
        ],
      ),
      body: Body(),
      drawer: AppDrawer(),
    );
  }
}
