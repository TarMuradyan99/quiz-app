import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quize_app/questions_summary/question_indentifire.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.ItemData, {super.key});

  final Map<String, Object> ItemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        ItemData['user_answer'] == ItemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdentifire(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: ItemData['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ItemData['question'] as String,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              ItemData['user_answer'] as String,
              style: const TextStyle(
                color: Color.fromARGB(255, 202, 171, 252),
              ),
            ),
            Text(
              ItemData['correct_answer'] as String,
              style: const TextStyle(color: Color.fromARGB(255, 181, 254, 246)),
            )
          ],
        ))
      ],
    );
  }
}
