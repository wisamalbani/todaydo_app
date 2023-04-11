import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool IsChecked;
  final String taskTitle;

  TaskTile({required this.IsChecked, required this.taskTitle});

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
        onChanged: null,
        // onChanged: checkboxchange,
      ),
    );
  }
}

// (bool? newvalue) {
//         setState(() {
//           IsChecked = newvalue!;
//         });
//       }

