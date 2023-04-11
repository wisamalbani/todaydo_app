import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import 'package:todaydo_app/widgets/task_list.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'by a gift'),
    Task(name: 'repaire the car'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {},
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
