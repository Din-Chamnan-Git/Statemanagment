import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/counter.dart';

class Mytext extends StatelessWidget {
  const Mytext({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Container(
        child: Text(
      "${counter.counter}",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 50,
      ),
    ));
  }
}
