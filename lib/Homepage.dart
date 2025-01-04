import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/SecondsPage.dart';
import 'package:provider_state/counter.dart';
import 'package:provider_state/myText.dart';
import 'package:provider_state/mybutton.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Secondspage(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
              ))
        ],
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
                    label: "Increment",
                    onPressed: () {
                      Provider.of<Counter>(context, listen: false).increment();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
