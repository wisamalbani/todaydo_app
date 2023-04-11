import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import 'package:todaydo_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            IsChecked: widget.tasks[index].IsDone,
            taskTitle: widget.tasks[index].name,
            checkboxchange: (newValue) {
              setState(() {
                widget.tasks[index].doneChange();
              });
            });
      },
    );
    // return ListView(
    //   children: [
    //     TaskTile(
    //       taskTitle: tasks[0].name,
    //       IsChecked: tasks[0].IsDone,
    //     ),
    //     TaskTile(
    //       taskTitle: tasks[1].name,
    //       IsChecked: tasks[1].IsDone,
    //     ),
    //     TaskTile(
    //       taskTitle: tasks[2].name,
    //       IsChecked: tasks[2].IsDone,
    //     ),
    //   ],
    // );
  }
}
