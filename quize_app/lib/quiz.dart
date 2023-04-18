import 'package:flutter/material.dart';
import 'package:quize_app/home_page_design.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(115, 0, 0, 0),
        body: Gradient_container(),
      ),
    );
  }
}
