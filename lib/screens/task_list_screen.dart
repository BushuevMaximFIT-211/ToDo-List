import 'package:flutter/material.dart';
import 'package:todo_list/screens/task_card.dart';
import 'package:todo_list/task_repository/task_repository_impl.dart';

class TaskListScreen extends StatelessWidget {
   TaskListScreen({super.key});
  final List<TaskCard>list = TaskRepositoryImpl.getTasksDefault().map((e) => TaskCard(taskString: e)).toList();

  @override
  Widget build(BuildContext context) {
    return  Scaffold( backgroundColor: const Color.fromARGB(255, 246, 143, 143),
     body: SafeArea(child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
     
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Text("To Do",  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,)),
          ),
          
           Expanded(child: ListView.builder(itemCount: list.length,
           
            itemBuilder: (BuildContext context, int index) { 
            return Dismissible(key: ValueKey<TaskCard>(list[index]),
            direction: DismissDirection.startToEnd,onDismissed: (direction) {
              list.removeAt(index);
            }, child: list[index],);
            },)),
         ],
       ),
     )));
  }
}