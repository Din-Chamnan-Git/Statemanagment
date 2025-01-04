import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/counter.dart';

class Mybutton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const Mybutton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      ),
      onPressed: onPressed,
    );
  }
}
