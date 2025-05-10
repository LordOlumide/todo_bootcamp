class Todo {
  final String content;
  // final bool isDone;

  const Todo({
    required this.content,
    // required this.isDone,
  });

  @override
  String toString() {
    return 'Todo(content: $content)';
  }
}
