import 'package:flutter/material.dart';

import 'package:todo/common/widgets/dismissible_widget.dart';
import 'package:todo/todo/models/todo_item.dart';

class TodoItemWidget extends StatelessWidget {
  final TodoItem todo;
  final VoidCallback onDismissed;
  final VoidCallback onToggled;

  const TodoItemWidget(
    this.todo, {
    required this.onDismissed,
    required this.onToggled,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: DismissibleWidget(
        key: key,
        onDismissed: () => onDismissed(),
        child: ListTile(
          title: Text(todo.title),
          leading: Checkbox(
            value: todo.completed,
            onChanged: (_) => onToggled(),
          ),
          trailing: const Icon(
            Icons.drag_handle_rounded,
          ),
        ),
      ),
    );
  }
}
