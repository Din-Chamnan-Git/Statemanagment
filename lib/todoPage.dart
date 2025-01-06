import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/Provider/todo_list_provider.dart';

class Todopage extends StatelessWidget {
  const Todopage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoList = Provider.of<TodoListProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: todoList.todo.length,
              itemBuilder: (context, index) {
                final todo = todoList.todo[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slidable(
                    startActionPane:
                        ActionPane(motion: StretchMotion(), children: [
                      SlidableAction(
                        backgroundColor: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                        onPressed: (context) {
                          todoList.removTodo(todo.id);
                        },
                        icon: Icons.delete,
                      )
                    ]),
                    child: Card(
                      color: Colors.deepPurple[400],
                      child: ListTile(
                        title: Text(
                          todo.title,
                          style: TextStyle(
                            color: Colors.white, // Text color
                            fontWeight: FontWeight.bold, // Bold text
                            decoration: todo.isCompleted
                                ? TextDecoration
                                    .lineThrough // Apply line-through if completed
                                : TextDecoration
                                    .none, // No decoration otherwise
                            decorationColor: Colors.red, // Set the line color
                            decorationThickness: 3.0, // Set the line thickness
                          ),
                        ),
                        subtitle: Text(
                          todo.id,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        leading: Checkbox(
                          fillColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.selected)) {
                                return Colors
                                    .green; // Color when the checkbox is selected
                              }
                              return Colors.white; // Default color
                            },
                          ),
                          value: todo.isCompleted,
                          onChanged: (_) {
                            todoList.toggleTodoStatus(todo.id);
                          },
                        ),
                        // trailing: IconButton(
                        //   icon: const Icon(Icons.delete),
                        //   color: Colors.amberAccent,
                        //   onPressed: () {},
                        // ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(
                      labelText: 'Enter todo',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (value) {
                      if (value.isNotEmpty) {
                        todoList.addTodo(value);
                      }
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
