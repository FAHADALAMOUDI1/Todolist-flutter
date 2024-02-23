import 'package:flutter/material.dart';
import 'package:flutter_application_todolist/providers/task_provider.dart';
import 'package:provider/provider.dart';
import '../../providers/task_provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();

    return Expanded(
      child: Container(
        child: Container(
          child: ListView.builder(
            itemCount: taskProvider.tasks.length,
            itemBuilder: (context, index) {
              return Container(
                child: Dismissible(
                  key: Key(index.toString()),
                  background: Container(
                    child: Icon(
                      Icons.delete,
                      color: Colors.deepPurpleAccent,
                      size: 40,
                    ),
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20),
                  ),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    taskProvider.removeTask(index);
                  },
                  child: ListTile(
                    title: Text(
                      taskProvider.tasks[index].title,
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    trailing: Image(
                      image: taskProvider.tasks[index].complete
                          ? AssetImage("assets/icons/completed.png")
                          : AssetImage("assets/icons/non-completed.png"),
                    ),
                    onTap: () {
                      taskProvider.makeTaskComplete(index);
                    },
                  ),
                ),
              );
            },
          ),
        ),
        margin: EdgeInsets.only(left: 16, right: 16),
      ),
      flex: 5,
    );
  }
}
