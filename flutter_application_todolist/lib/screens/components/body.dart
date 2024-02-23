import 'package:flutter/material.dart';
import 'package:flutter_application_todolist/screens/components/task_list.dart';
import 'add_task_button.dart';
import 'welcome.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Welcome(name: 'Fahad', avatar: 'assets/icons/avatar.png'),
        AddTaskButton(),
        TaskList(),
      ],
    );
  }
}