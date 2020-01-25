import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked =
      false; //! Herşey burdaki boola bağlı, parent state den aşağı dağılıyor.

  // void checkboxCallback(bool checkboxState) {   // ! burdaki callback isimsiz hali aşağıda kullanılıyor kısa olarak
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        ' This is task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: (bool checkboxState) {
          //! callback fonksiyonu kullanımı yukardakinin kısa hali
          setState(
            () {
              isChecked = checkboxState;
            },
          );
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged:
          toggleCheckboxState, //! 1- stateless widget ekran değiştiremediği için, setstateli fonksiyon atanıyor (callback)
    );
  }
}
