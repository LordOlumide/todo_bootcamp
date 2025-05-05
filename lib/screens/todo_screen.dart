import 'package:bootcamp_1/models/todo_model.dart';
import 'package:bootcamp_1/widgets/todo_container.dart';
import 'package:flutter/material.dart';

List<Todo> dummyTodos = [
  Todo(content: 'Buy milk'),
  Todo(content: 'Buy fish'),
  Todo(content: 'Sweep the house'),
];

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<bool> states = [true, true, true];

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
          TodoContainer(
            todo: dummyTodos[0],
            isSelected: states[0],
            onTodoChanged: (bool newValue) {
              setState(() {
                states[0] = !states[0];
              });
            },
          ),
          TodoContainer(
            todo: dummyTodos[1],
            isSelected: states[1],
            onTodoChanged: (bool newValue) {
              setState(() {
                states[1] = !states[1];
              });
            },
          ),
          TodoContainer(
            todo: dummyTodos[2],
            isSelected: states[2],
            onTodoChanged: (bool newValue) {
              setState(() {
                states[2] = !states[2];
              });
            },
          ),
        ],
      ),
    );
  }
}
