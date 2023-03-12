import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String taskString;
  const TaskCard({super.key, required this.taskString});

  @override
  Widget build(BuildContext context) {
    return  Card( color: const Color.fromRGBO(222, 168, 81, 0), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)) ,child: ListTile( title: Text(taskString),  ));
  }
}