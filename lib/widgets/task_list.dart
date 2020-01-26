import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo/modals/task.dart';
import 'package:todo/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(
                () {
                  tasks[index].toggleDone();
                },
              );
            },
          );
        },
        itemCount: tasks.length);
  }
}
