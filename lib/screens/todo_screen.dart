import 'package:bootcamp_1/models/todo_model.dart';
import 'package:bootcamp_1/widgets/todo_container.dart';
import 'package:flutter/material.dart';

List<Todo> dummyTodos = [
  Todo(content: 'Buy milk', isDone: false),
  Todo(content: 'Buy fish', isDone: true),
  Todo(content: 'Sweep the house', isDone: true),
];

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Todos',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 90,
        leading: Icon(Icons.list_alt, size: 32),
        leadingWidth: 70,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Column(
        children: [
          TodoContainer(todo: dummyTodos[0], onTodoChanged: (_) {}),
          TodoContainer(todo: dummyTodos[1], onTodoChanged: (_) {}),
          TodoContainer(todo: dummyTodos[2], onTodoChanged: (_) {}),
        ],
      ),
    );
  }
}
