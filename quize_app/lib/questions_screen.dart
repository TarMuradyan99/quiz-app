import 'package:flutter/material.dart';
import 'package:quize_app/answer_button.dart';
import 'package:quize_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
 final List<String> selectedAnswers = [];

  var currentQuestionIndex = 0;
  void answerQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestions = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestions.text,
              style: GoogleFonts.dancingScript(
                color: const Color.fromARGB(255, 190, 184, 184),
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestions.getShuffledList().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestion);
              
            })
          ],
        ),
      ),
    );
  }
}
