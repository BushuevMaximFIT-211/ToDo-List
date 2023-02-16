import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {
   TaskListScreen({super.key});
  final list = <Widget>[ListTile(title: Text("1")),ListTile(title: Text("1"))];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Just Do It"),), backgroundColor: Theme.of(context).primaryColor,
    body: ListView(children: list,));
  }
}