import 'package:bootcamp_1/models/todo_model.dart';
import 'package:flutter/material.dart';

class TodoContainer extends StatelessWidget {
  final Todo todo;
  final Function(bool) onTodoChanged;
  final Function onEditPressed;
  final Function onDeletePressed;

  const TodoContainer({
    super.key,
    required this.todo,
    required this.onTodoChanged,
    required this.onEditPressed,
    required this.onDeletePressed,
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
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              onEditPressed();
            },
            icon: Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {
              onDeletePressed();
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
