import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/counter.dart';

import 'myText.dart';
import 'mybutton.dart';

class Secondspage extends StatelessWidget {
  const Secondspage({super.key});

  @override
  Widget build(BuildContext context) {
    // final c = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Secounds Page"),
      ),
      body: Expanded(
        child: Center(
          child: Container(
            child: Column(
              children: [
                Mytext(),
                SizedBox(
                  height: 50,
                ),
                Mybutton(
                    label: "decrement",
                    onPressed: () {
                      Provider.of<Counter>(context, listen: false).decrement();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
