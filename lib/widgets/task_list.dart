import 'package:flutter/material.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(task: 'Buy milk', check: true),
        TaskTile(task: 'Buy bread', check: false),
        TaskTile(task: 'Drink milk', check: true)
      ],
    );
  }
}
