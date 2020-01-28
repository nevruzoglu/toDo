import 'package:flutter/material.dart';
import 'package:todo/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: null,
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
