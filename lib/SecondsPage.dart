import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/counter.dart';

class Secondspage extends StatelessWidget {
  const Secondspage({super.key});

  @override
  Widget build(BuildContext context) {
    // final c = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Secounds Page"),
      ),
      body: Container(
        child: Column(
          children: [Text("")],
        ),
      ),
    );
  }
}
