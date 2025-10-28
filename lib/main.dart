import 'package:adv_basics/quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 1',
      home: Container(
        //color: Colors.purple,
        child: SizedBox(width: double.infinity, child: const Quiz()),
      ),
    );
  }
}
