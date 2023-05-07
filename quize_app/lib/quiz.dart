import 'package:flutter/material.dart';
import 'package:quize_app/home_page_design.dart';
import 'package:quize_app/questions_screen.dart';
import 'package:quize_app/data/questions.dart';
import 'package:quize_app/results_screen-widget.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  @override
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-scren';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = Gradient_container(switchScreen);

    if (activeScreen == 'questions-scren') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(115, 0, 0, 0),
        body: Container(child: screenWidget),
      ),
    );
  }
}
