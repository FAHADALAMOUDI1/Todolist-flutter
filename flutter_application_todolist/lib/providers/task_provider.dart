import 'package:flutter/material.dart';
import 'package:flutter_application_todolist/models/task.dart';

class TaskProvider extends ChangeNotifier {
  // ignore: prefer_final_fields, unused_field
  List<Task> _tasks =[
    Task(
      title: 'my first task',
      complete: false,
      ),
  ];

  List<Task> get tasks{
    return _tasks;
  }
  // for add task
  void addTask(task){
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(index){
  _tasks.removeAt(index);
  notifyListeners();
  }

  void makeTaskComplete(index){
    _tasks[index].complete = !_tasks[index].complete;
    notifyListeners();
  }
}