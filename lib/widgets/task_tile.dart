import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool IsChecked;
  final String taskTitle;
  final void Function(bool?) checkboxchange;

  TaskTile({
    required this.IsChecked,
    required this.taskTitle,
    required this.checkboxchange,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: IsChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: IsChecked,
        onChanged: checkboxchange,
      ),
    );
  }
}
