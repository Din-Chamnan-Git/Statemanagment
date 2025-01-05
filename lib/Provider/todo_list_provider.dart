import 'package:flutter/material.dart';
import 'package:todo_list_provider/model/todo_model.dart';

class TodoListProvider extends ChangeNotifier {
  final List<TodoModel> _todo = [
    TodoModel(
      id: '1',
      title: 'Buy groceries',
      isCompleted: false,
    ),
    TodoModel(
      id: '2',
      title: 'Complete Flutter project',
      isCompleted: true,
    ),
    TodoModel(
      id: '3',
      title: 'Call the plumber',
      isCompleted: false,
    ),
    TodoModel(
      id: '4',
      title: 'Workout for 30 minutes',
      isCompleted: true,
    ),
    TodoModel(
      id: '5',
      title: 'Read 10 pages of a book',
      isCompleted: false,
    ),
    TodoModel(
      id: '1',
      title: 'Buy groceries',
      isCompleted: false,
    ),
    TodoModel(
      id: '2',
      title: 'Complete Flutter project',
      isCompleted: true,
    ),
    TodoModel(
      id: '3',
      title: 'Call the plumber',
      isCompleted: false,
    ),
    TodoModel(
      id: '4',
      title: 'Workout for 30 minutes',
      isCompleted: true,
    ),
    TodoModel(
      id: '5',
      title: 'Read 10 pages of a book',
      isCompleted: false,
    ),
  ];

  List<TodoModel> get todo => _todo;

  void addTodo(String title) {
    final newTodo = TodoModel(
      id: DateTime.now().second.toString(),
      title: title,
    );
    _todo.add(newTodo);
    notifyListeners();
  }

  void toggleTodoStatus(String id) {
    final todo = _todo.firstWhere(
      (todo) => todo.id == id,
    );
    todo.isCompleted = !todo.isCompleted;
    notifyListeners();
  }

  void removTodo(String id) {
    final todo = _todo.removeWhere(
      (todo) => todo.id == id,
    );
    notifyListeners();
  }
}
