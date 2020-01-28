import 'package:flutter/material.dart';

import 'package:todo/modals/task_data.dart';
import 'package:todo/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  // setState(
                  //   () {
                  //     widget.tasks[index].toggleDone();
                  //   },
                  // );
                },
              );
            },
            itemCount: taskData.tasks.length);
      },
    );
  }
}

//! Provider.of<TaskData>(context)  == taskData
