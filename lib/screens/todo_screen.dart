import 'package:bootcamp_1/models/todo_model.dart';
import 'package:bootcamp_1/widgets/todo_bottom_sheet.dart';
import 'package:bootcamp_1/widgets/todo_container.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> dummyTodos = [
    Todo(content: 'Buy milk'),
    Todo(content: 'Buy fish'),
    Todo(content: 'Sweep the house'),
  ];

  @override
  Widget build(BuildContext context) {
    print(dummyTodos);

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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
            context: context,
            scrollControlDisabledMaxHeightRatio: 0.7,
            builder: (context) {
              return TodoBottomSheet();
            },
          );
          if (result != null && result is String) {
            setState(() {
              dummyTodos.add(Todo(content: result));
            });
          }
        },
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          for (int index = 0; index < dummyTodos.length; index++)
            TodoContainer(
              todo: dummyTodos[index],
              isSelected: true,
              onTodoChanged: (bool newValue) {
                // setState(() {
                //   states[0] = !states[0];
                // });
              },
            ),
        ],
      ),
    );
  }
}
