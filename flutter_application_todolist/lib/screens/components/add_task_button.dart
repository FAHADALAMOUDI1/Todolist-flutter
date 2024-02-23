import 'package:flutter/material.dart';
import 'package:flutter_application_todolist/screens/components/task_form.dart';

class AddTaskButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:() => showDialog(
        builder: (BuildContext context){
          return TaskForm();
        },
        context: context,
        ) ,
      // ignore: prefer_const_constructors, sort_child_properties_last
      child: Icon(Icons.add),
      backgroundColor: Colors.deepPurpleAccent,
      );
  }
}