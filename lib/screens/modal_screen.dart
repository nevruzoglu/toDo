import 'package:flutter/material.dart';

class ShowModalScreen extends StatelessWidget {
  final Function addTaskCallback;
  ShowModalScreen(this.addTaskCallback);

  String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        padding: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                child: Text(
                  'Enter',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
