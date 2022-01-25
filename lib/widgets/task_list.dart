import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  bool? isChecked = false;
  void checkBoxCallBack(bool ?checkboxState){
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: CheckBox(
        checked: isChecked,
        checkBoxCallBack: checkBoxCallBack,
      ),
    );
  }
}

class CheckBox extends StatelessWidget {
  CheckBox({required this.checked, required this.checkBoxCallBack});
  final bool? checked;
  final Function(bool?)? checkBoxCallBack;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checked,
      onChanged: checkBoxCallBack,
    );
  }
}
