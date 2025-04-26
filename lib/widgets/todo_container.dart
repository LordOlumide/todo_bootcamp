import 'package:bootcamp_1/models/todo_model.dart';
import 'package:flutter/material.dart';

class TodoContainer extends StatelessWidget {
  final Todo todo;
  final Function(bool?) onTodoChanged;

  const TodoContainer({
    super.key,
    required this.todo,
    required this.onTodoChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Checkbox(
            value: todo.isDone,
            onChanged: (bool? newValue) {
              onTodoChanged(newValue);
            },
          ),
          Text(todo.content),
        ],
      ),
    );
  }
}
