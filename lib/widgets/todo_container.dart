import 'package:bootcamp_1/models/todo_model.dart';
import 'package:flutter/material.dart';

class TodoContainer extends StatelessWidget {
  final Todo todo;
  final Function(bool) onTodoChanged;

  const TodoContainer({
    super.key,
    required this.todo,
    required this.onTodoChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: todo.isDone,
        onChanged: (bool? newValue) {
          if (newValue != null) {
            onTodoChanged(newValue);
          }
        },
      ),
      title: Text(todo.content),
    );
  }
}
