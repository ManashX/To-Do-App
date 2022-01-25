import 'package:flutter/material.dart';
import 'task_list.dart';



class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskList(),
        TaskList(),
      ],
    );
  }
}