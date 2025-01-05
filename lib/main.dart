import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/Provider/todo_list_provider.dart';

import 'todoPage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TodoListProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Todopage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
