import 'package:flutter/material.dart';
import 'package:to_do_app/screens/task_screen.dart';

void main() {
  runApp(ToDoApp());
}
class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}
