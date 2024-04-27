import 'package:flutter/material.dart';
import 'screens/task_list_screen.dart';
import 'model/todo_item.dart'; // Import the TodoItem model

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create some sample tasks for demonstration purposes
    List<TodoItem> tasks = [
      TodoItem(id: '1', name: 'Task 1', isCompleted: false),
      TodoItem(id: '2', name: 'Task 2', isCompleted: true),
      TodoItem(id: '3', name: 'Task 3', isCompleted: false),
    ];

    return MaterialApp(
      title: 'Todo List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:
          TaskListScreen(tasks: tasks), // Pass the tasks list to TaskListScreen
    );
  }
}
