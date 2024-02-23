import 'package:flutter/material.dart';
import 'package:flutter_application_todolist/providers/task_provider.dart';
import 'package:provider/provider.dart';

import '../../models/task.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final _formKey = GlobalKey<FormState>();
  final taskTitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return AlertDialog(
      // ignore: prefer_const_constructors
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -40.0,
            top: -40.0,
            child: CircleAvatar(
              child: Icon(Icons.close),
              backgroundColor: Colors.red,
            ),
          ),
          Form(
          key:_formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: taskTitle,
                    decoration: InputDecoration(hintText: "Add task title ..."),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Text("Add Task"),
                    onPressed: () {
                        if(_formKey.currentState!.validate()) {
                        Navigator.of(context).pop();
                        context.read<TaskProvider>().addTask(
                              Task(
                                title: taskTitle.text,
                                complete: false,
                            ));
                        }
                    },
                  ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
