import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/counter.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({super.key});

  @override
  Widget build(BuildContext context) {
    final Counter c = Provider.of<Counter>(context);
    return Expanded(
        child: Center(
      child: IconButton(
        icon: Icon(
          Icons.add,
        ),
        iconSize: 50,
        onPressed: () => c.incresment(),
      ),
    ));
  }
}
