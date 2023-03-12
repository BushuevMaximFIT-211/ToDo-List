import 'package:flutter/material.dart';
import 'package:todo_list/screens/task_list_screen.dart';

class ToDoListScreen extends StatelessWidget {
  const ToDoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(children: [TaskListScreen(), TaskListScreen()],);
  }
}