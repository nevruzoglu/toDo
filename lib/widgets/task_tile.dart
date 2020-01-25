import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({@required this.task, @required this.check});
  final String task;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(' $task'),
      trailing: Checkbox(value: check, onChanged: null),
    );
  }
}
