import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        ' This is task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:  Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged:
          toggleCheckboxState, //! 1- stateless widget ekran değiştiremediği için, setstateli fonksiyon atanıyor (callback)
    );
    );
  }
}

