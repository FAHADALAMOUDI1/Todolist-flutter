import 'package:flutter/material.dart';
import 'package:flutter_application_todolist/providers/task_provider.dart';
import 'package:flutter_application_todolist/screens/home.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MyApp(), 
      ));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add to list',
      home: Home(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
  
}