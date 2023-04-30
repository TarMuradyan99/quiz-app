import 'package:flutter/material.dart';
import 'package:quize_app/home_page_design.dart';
import 'package:quize_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  @override
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-scren';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = Gradient_container(switchScreen);

    if (activeScreen == 'questions-scren') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(115, 0, 0, 0),
        body: Container(child: screenWidget),
      ),
    );
  }
}
