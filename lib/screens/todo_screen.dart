import 'package:bootcamp_1/models/todo_model.dart';
import 'package:bootcamp_1/widgets/delete_popup.dart';
import 'package:bootcamp_1/widgets/todo_bottom_sheet.dart';
import 'package:bootcamp_1/widgets/todo_container.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> todos = [];

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
      floatingActionButton: FloatingActionButton(
        onPressed: onAddPressed,
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          for (int index = 0; index < todos.length; index++)
            Column(
              children: [
                TodoContainer(
                  todo: todos[index],
                  onTodoChanged: (newValue) => _onTodoChanged(newValue, index),
                  onEditPressed: () => onEditPressed(index),
                  onDeletePressed: () => onDeletePressed(index),
                ),
                Divider(),
              ],
            ),
        ],
      ),
    );
  }

  void onAddPressed() async {
    final result = await showModalBottomSheet(
      context: context,
      scrollControlDisabledMaxHeightRatio: 0.7,
      builder: (context) {
        return TodoBottomSheet();
      },
    );
    if (result != null && result is String) {
      setState(() {
        todos.add(Todo(content: result, isDone: false));
      });
    }
  }

  void _onTodoChanged(bool newValue, int index) {
    Todo newTodo = Todo(
      content: todos[index].content,
      isDone: !todos[index].isDone,
    );
    setState(() {
      todos[index] = newTodo;
    });
  }

  void onEditPressed(int index) async {
    final result = await showModalBottomSheet(
      context: context,
      scrollControlDisabledMaxHeightRatio: 0.7,
      builder: (context) {
        return TodoBottomSheet(initialText: todos[index].content);
      },
    );
    if (result != null && result is String) {
      setState(() {
        todos[index] = Todo(content: result, isDone: false);
      });
    }
  }

  void onDeletePressed(int index) async {
    final result = await showDialog(
      context: context,
      builder: (context) {
        return DeletePopup();
      },
    );
    print(result);
    if (result != null && result is bool) {
      if (result == true) {
        setState(() {
          todos.removeAt(index);
        });
      } else {
        return;
      }
    }
  }
}
