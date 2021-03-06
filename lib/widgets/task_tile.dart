import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPress;

  TaskTile(
      {this.isChecked, this.taskTitle, this.checkboxCallback, this.longPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.grey.shade900,
        value: isChecked,
        onChanged: checkboxCallback,
        // toggleCheckboxState,
      ),
    );
  }
}
