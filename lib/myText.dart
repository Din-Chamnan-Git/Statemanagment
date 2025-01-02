import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/counter.dart';

class Mytext extends StatelessWidget {
  const Mytext({super.key});

  @override
  Widget build(BuildContext context) {
    final Counter c = Provider.of<Counter>(context);

    return Expanded(
        child: Center(
      child: Text(
        "${c.counter}",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    ));
  }
}
